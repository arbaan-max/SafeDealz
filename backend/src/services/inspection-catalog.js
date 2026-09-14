const working = ['Working', 'Faulty', 'Not available'];
const control = ['Working', 'Faulty', 'Missing', 'Not available'];
const present = ['Present and working', 'Present but faulty', 'Not present'];
const security = ['Unlocked', 'Locked', 'Not applicable'];
const yesNo = ['Yes', 'No'];

export const inspectionFields = {
  sim1: { label: 'SIM 1 working?', options: yesNo },
  sim2: { label: 'SIM 2 working?', options: ['Yes', 'No', 'Not applicable'] },
  esim: {
    label: 'Supported SIM configuration',
    options: ['Single eSIM', 'Dual eSIM', 'Both physical SIM', 'Physical SIM + eSIM', 'Not available'],
  },
  touch: { label: 'Screen touch calibration', options: working },
  screenCopy: { label: 'Is the mobile screen a replacement/copy?', options: yesNo },
  spots: {
    label: 'Visible spots',
    options: [
      'No spots',
      'Up to 3 white spots of 2 mm or 1 white spot of 3 mm',
      'More than 3 white spots or white patches',
      'Coloured spots or patches',
    ],
  },
  lines: { label: 'Visible lines', options: ['No lines on screen', 'Lines on screen'] },
  discoloration: {
    label: 'Screen discoloration',
    options: ['No discoloration', 'Minor edge discoloration', 'Major coloured edge shade', 'Screen fading or background imprint'],
  },
  screenDamage: {
    label: 'Screen scratches or cracks',
    options: [
      'Excellent, no visible scratches',
      'Up to 5 scratches under 1 cm',
      'Up to 10 scratches of 1 cm or up to 5 scratches of 1.1–2.5 cm',
      'Heavy scratches or a nail-catching scratch',
      'Minor chip along a screen edge',
      'Screen cracked or broken',
    ],
  },
  paint: {
    label: 'Screen paint or bubbles',
    options: ['No paint peel or bubbles', 'Minor paint peel or fewer than 2 bubbles', 'Major paint peel or more than 2 bubbles'],
  },
  flicker: { label: 'Screen flickering', options: ['No flickering', 'Flickering detected'] },
  bodyScratches: {
    label: 'Scratches or paint damage',
    options: [
      'Excellent',
      'Up to 5 scratches under 1 cm',
      'Up to 15 scratches of 1 cm or up to 5 scratches of 3 cm',
      'More than 15 scratches of 1 cm, more than 5 scratches of 3 cm, or scratches over 3 cm',
      'Minor paint peel or bubbles',
      'Major paint peel or bubbles',
    ],
  },
  dents: { label: 'Dents', options: ['No dents', 'Fewer than 2 dents up to 2 mm', 'More than 2 dents or a body crack under 1 cm'] },
  panel: {
    label: 'Side/back panel condition',
    options: ['No defect', 'Loose panel with a visible gap or pasting', 'Missing panel', 'Cracked or broken panel', 'Glass back panel damaged'],
  },
  bent: {
    label: 'Bent or loose-screen condition',
    options: ['Phone is not bent', 'Loose screen with a visible body gap or pasting', 'Bent/folded panel with curve visible on screen'],
  },
  unknownDisplay: { label: 'Display part status', options: ['Part is recognised', 'Unknown part detected'], appleOnly: true },
  unknownCamera: { label: 'Camera part status', options: ['Part is recognised', 'Unknown part detected'], appleOnly: true },
  unknownBattery: { label: 'Battery part status', options: ['Part is recognised', 'Unknown part detected'], appleOnly: true },
  account: { label: 'Account lock', options: security },
  country: { label: 'Country / carrier lock', options: security },
  finance: { label: 'Finance / brand lock', options: security },
  purchaseCountry: { label: 'Purchase origin', options: ['Purchased in India', 'Not purchased in India', 'Unknown'] },
  deviceAge: { label: 'Device age', options: ['Below 3 months', '3 to below 6 months', '6 to below 11 months', '11 months or older'] },
  repair: { label: 'Repair / parts history', options: ['No known repairs', 'Parts replaced', 'Unknown'] },
  box: { label: 'Box', options: yesNo },
  bill: { label: 'Bill', options: yesNo },
  charger: { label: 'Charger', options: yesNo },
  wifi: { label: 'Wi-Fi', options: working },
  bluetooth: { label: 'Bluetooth', options: working },
  vibration: { label: 'Vibration', options: working },
  speaker: { label: 'Loudspeaker', options: working },
  earSpeaker: { label: 'Ear speaker', options: working },
  volume: { label: 'Volume buttons', options: control },
  power: { label: 'Power button', options: control },
  simTray: { label: 'SIM tray', options: ['Available', 'Broken', 'Missing'] },
  gps: { label: 'GPS', options: working },
  proximity: { label: 'Proximity sensor', options: working },
  charging: { label: 'Charging port', options: working },
  audio: { label: 'Audio jack', options: working },
  microphone: { label: 'Microphone', options: working },
  face: { label: 'Face ID', options: present },
  fingerprint: { label: 'Fingerprint / Touch ID', options: present },
  frontCamera: { label: 'Front camera', options: ['No issues', 'Blurred image', 'Visible spots', 'Distorted image', 'Not working', 'Not available'] },
  backCamera: { label: 'Back camera', options: ['No issues', 'Blurred image', 'Visible spots', 'Distorted image', 'Not working'] },
  cameraGlass: { label: 'Camera glass', options: ['Not broken', 'Cracked or broken'] },
};

export const inspectionStepKeys = [
  ['sim1', 'sim2', 'esim'],
  ['touch', 'screenCopy', 'spots', 'lines', 'discoloration', 'screenDamage', 'paint', 'flicker'],
  ['bodyScratches', 'dents', 'panel', 'bent'],
  ['unknownDisplay', 'unknownCamera', 'unknownBattery', 'account', 'country', 'finance'],
  ['purchaseCountry', 'deviceAge', 'repair', 'box', 'bill', 'charger'],
  ['wifi', 'bluetooth', 'vibration', 'speaker', 'earSpeaker', 'volume', 'power', 'simTray', 'gps', 'proximity', 'charging', 'audio', 'microphone', 'face', 'fingerprint'],
  ['frontCamera', 'backCamera', 'cameraGlass'],
];

export const catalogVersion = '2026-09-14.1';
export const storageOptions = ['64 GB', '128 GB', '256 GB', '512 GB', '1 TB'];
export const ramOptions = ['4 GB', '6 GB', '8 GB', '12 GB', '24 GB'];
export const billAgeExemptOption = '11 months or older';
export const inspectionStepTitles = [
  'Basic & SIM',
  'Screen condition',
  'Body condition',
  'Parts & security',
  'Accessories, origin & age',
  'Functional checks',
  'Camera checks',
];
export const evidenceSlots = [
  { purpose: 'rotation', label: '360° video' },
  { purpose: 'front', label: 'Front' },
  { purpose: 'back', label: 'Back' },
  { purpose: 'top', label: 'Top edge' },
  { purpose: 'bottom', label: 'Bottom edge' },
  { purpose: 'left', label: 'Left edge' },
  { purpose: 'right', label: 'Right edge' },
  { purpose: 'bill', label: 'Bill', billOnly: true },
];
export const diagnosticChecks = [
  { id: 'imei', label: 'IMEI 1 and IMEI 2', group: 'automated' },
  { id: 'wifi', label: 'Wi-Fi', group: 'automated' },
  { id: 'bluetooth', label: 'Bluetooth', group: 'automated' },
  { id: 'gps', label: 'GPS / network', group: 'automated' },
  { id: 'battery', label: 'Battery / charging', group: 'automated' },
  { id: 'magnetometer', label: 'Magnetometer', group: 'automated' },
  { id: 'volumeUp', label: 'Volume up', group: 'buttons' },
  { id: 'volumeDown', label: 'Volume down', group: 'buttons' },
  { id: 'power', label: 'Power / screen lock', group: 'buttons' },
  { id: 'home', label: 'Home / back / recent', group: 'buttons' },
  { id: 'frontCamera', label: 'Front camera', group: 'sensors' },
  { id: 'backCamera', label: 'Back camera', group: 'sensors' },
  { id: 'microphone', label: 'Microphone', group: 'sensors' },
  { id: 'speaker', label: 'Receiver / speaker', group: 'sensors' },
  { id: 'vibration', label: 'Vibration', group: 'sensors' },
  { id: 'proximity', label: 'Proximity', group: 'sensors' },
  { id: 'gyroscope', label: 'Gyroscope', group: 'sensors' },
];

export const publicCatalog = () => ({
  version: catalogVersion,
  storages: storageOptions,
  rams: ramOptions,
  platforms: ['apple', 'android'],
  billAgeExemptOption,
  inspectionFields: Object.entries(inspectionFields).map(([key, field]) => ({
    key,
    label: field.label,
    options: field.options,
    appleOnly: Boolean(field.appleOnly),
  })),
  inspectionSteps: inspectionStepKeys.map((keys, index) => ({
    title: inspectionStepTitles[index],
    keys,
  })),
  evidence: evidenceSlots,
  diagnosticChecks,
});

export const requiredInspectionKeys = (platform) => Object.entries(inspectionFields)
  .filter(([, field]) => platform === 'apple' || !field.appleOnly)
  .map(([key]) => key);

export const sampleInspectionAnswers = (platform = 'android') => {
  const answers = {};
  for (const key of requiredInspectionKeys(platform)) {
    answers[key] = inspectionFields[key].options[0];
  }
  answers.deviceAge = '11 months or older';
  answers.bill = 'Yes';
  answers.account = 'Unlocked';
  answers.country = 'Unlocked';
  answers.finance = 'Unlocked';
  return answers;
};
