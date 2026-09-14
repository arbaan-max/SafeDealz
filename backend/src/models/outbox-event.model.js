import mongoose from 'mongoose';

const outboxEventSchema = new mongoose.Schema(
  {
    topic: { type: String, required: true, trim: true },
    aggregateType: { type: String, required: true, trim: true },
    aggregateId: { type: String, required: true, trim: true },
    idempotencyKey: { type: String, required: true, trim: true, unique: true },
    payload: { type: mongoose.Schema.Types.Mixed, required: true },
    status: { type: String, required: true, enum: ['pending', 'processing', 'published', 'failed'], default: 'pending', index: true },
    availableAt: { type: Date, required: true, default: Date.now, index: true },
    publishedAt: Date,
    attempts: { type: Number, required: true, min: 0, default: 0 },
  },
  { timestamps: true, versionKey: false },
);

outboxEventSchema.index({ status: 1, availableAt: 1, createdAt: 1 });

export const OutboxEvent = mongoose.model('OutboxEvent', outboxEventSchema);
