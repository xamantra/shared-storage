import 'dart:io';

import 'package:shared_storage/src/environment/common.dart';

import '../channels.dart';
import 'environment_directory.dart';

/// Equivalent to `Environment.getRootDirectory`
///
/// [Refer to details](https://developer.android.com/reference/android/os/Environment#getRootDirectory%28%29)
Future<Directory> getRootDirectory() async {
  const kGetRootDirectory = 'getRootDirectory';

  return invokeVoidEnvironmentMethod(kGetRootDirectory);
}

/// Equivalent to `Environment.getExternalStoragePublicDirectory`
///
/// _Added in API level 8_
///
/// _Deprecated in API level 29_
///
/// [Refer to details](https://developer.android.com/reference/android/os/Environment#getExternalStoragePublicDirectory%28java.lang.String%29)
Future<Directory> getExternalStoragePublicDirectory(
    EnvironmentDirectory directory) async {
  const kGetExternalStoragePublicDirectory =
      'getExternalStoragePublicDirectory';
  const kDirectoryArg = 'directory';

  final args = <String, String>{kDirectoryArg: '$directory'};

  final publicDir = await kEnvironmentChannel.invokeMethod<String>(
      kGetExternalStoragePublicDirectory, args);

  if (publicDir == null) return null;

  return Directory(publicDir);
}

/// Equivalent to `Environment.getExternalStorageDirectory`
///
/// [Refer to details](https://developer.android.com/reference/android/os/Environment#getExternalStorageDirectory%28%29)
Future<Directory> getExternalStorageDirectory() async {
  const kGetExternalStorageDirectory = 'getExternalStorageDirectory';

  return invokeVoidEnvironmentMethod(kGetExternalStorageDirectory);
}

/// Equivalent to `Environment.getDataDirectory`
///
/// [Refer to details](https://developer.android.com/reference/android/os/Environment#getDataDirectory%28%29)
Future<Directory> getDataDirectory() async {
  const kGetDataDirectory = 'getDataDirectory';

  return invokeVoidEnvironmentMethod(kGetDataDirectory);
}

/// Equivalent to `Environment.getDataDirectory`
///
/// [Refer to details](https://developer.android.com/reference/android/os/Environment#getDownloadCacheDirectory%28%29)
Future<Directory> getDownloadCacheDirectory() async {
  const kGetDownloadCacheDirectory = 'getDownloadCacheDirectory';

  return invokeVoidEnvironmentMethod(kGetDownloadCacheDirectory);
}

/// Equivalent to `Environment.getStorageDirectory`
///
/// [Refer to details](https://developer.android.com/reference/android/os/Environment#getStorageDirectory%28%29)
Future<Directory> getStorageDirectory() {
  const kGetStorageDirectory = 'getStorageDirectory';

  return invokeVoidEnvironmentMethod(kGetStorageDirectory);
}
