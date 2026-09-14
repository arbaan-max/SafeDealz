// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_import, invalid_annotation_target, unnecessary_import

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../models/admin_create.dart';
import '../models/admin_list_response.dart';
import '../models/admin_response.dart';
import '../models/admin_update.dart';
import '../models/branch_create.dart';
import '../models/branch_list_response.dart';
import '../models/branch_response.dart';
import '../models/branch_update.dart';
import '../models/chain_list_response.dart';
import '../models/chain_response.dart';
import '../models/chain_write.dart';

part 'organization_client.g.dart';

@RestApi()
abstract class OrganizationClient {
  factory OrganizationClient(Dio dio, {String? baseUrl}) = _OrganizationClient;

  @GET('/chains')
  Future<ChainListResponse> listChains();

  @POST('/chains')
  Future<ChainResponse> createChain({
    @Body() required ChainWrite body,
  });

  @PATCH('/chains/{id}')
  Future<ChainResponse> updateChain({
    @Path('id') required String id,
    @Body() required ChainWrite body,
  });

  @GET('/branches')
  Future<BranchListResponse> listBranches();

  @POST('/branches')
  Future<BranchResponse> createBranch({
    @Body() required BranchCreate body,
  });

  @PATCH('/branches/{id}')
  Future<BranchResponse> updateBranch({
    @Path('id') required String id,
    @Body() required BranchUpdate body,
  });

  @GET('/admins')
  Future<AdminListResponse> listAdmins();

  @POST('/admins')
  Future<AdminResponse> createAdmin({
    @Body() required AdminCreate body,
  });

  @PATCH('/admins/{id}')
  Future<AdminResponse> updateAdmin({
    @Path('id') required String id,
    @Body() required AdminUpdate body,
  });
}
