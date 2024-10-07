#!/bin/bash

(system_profiler SPDisplaysDataType &&
 system_profiler SPMemoryDataType && 
 system_profiler SPHardwareDataType &&
  system_profiler SPParallelATADataType &&
  system_profiler SPUniversalAccessDataType &&
  system_profiler SPSecureElementDataType &&
  system_profiler SPApplicationsDataType &&
  system_profiler SPAudioDataType && 
  system_profiler SPBluetoothDataType &&
  system_profiler SPCameraDataType &&
  system_profiler SPCardReaderDataType &&
  system_profiler SPiBridgeDataType &&
  system_profiler SPiBridgeDataType &&
  system_profiler SPDiagnosticsDataType &&
  system_profiler SPDeveloperToolsDataType &&
  system_profiler SPDisabledSoftwareDataType &&
  syste_profiler SPDiscBurningDataType &&
  syste_profiler SPEthernetDataType &&
  syste_profiler SPExtensionsDataType &&
  syste_profiler SPFibreChannelDataType &&
  syste_profiler SPFireWireDataType &&
  syste_profiler SPFirewallDataType &&
  syste_profiler SPFontsDataType &&
  syste_profiler SPFrameworksDataType &&
  syste_profiler SPDisplaysDataType &&
  syste_profiler SPHardwareDataType &&
  syste_profiler SPInstallHistoryDataType &&
  syste_profiler SPInternationalDataType &&
  syste_profiler SPLegacySoftwareDataType &&
  syste_profiler SPNetworkLocationDataType &&
  syste_profiler SPLogsDataType &&
  syste_profiler SPManagedClientDataType &&
  syste_profiler SPMemoryDataType &&
  syste_profiler SPNVMeDataType &&
  syste_profiler SPNetworkDataType &&
  syste_profiler SPPCIDataType &&
  syste_profiler SPParallelSCSIDataType &&
  syste_profiler SPPowerDataType &&
  syste_profiler SPPrefPaneDataType &&
  syste_profiler SPPrintersSoftwareDataType &&
  syste_profiler SPPrintersDataType &&
  syste_profiler SPConfigurationProfileDataType &&
  syste_profiler SPRawCameraDataType &&
  syste_profiler SPSASDataType &&
  syste_profiler SPSerialATADataType &&
  syste_profiler SPSPIDataType &&
  syste_profiler SPSmartCardsDataType &&
  syste_profiler SPSoftwareDataType &&
  syste_profiler SPStartupItemDataType &&
  syste_profiler SPStorageDataType &&
  syste_profiler SPSyncServicesDataType &&
  syste_profiler SPThunderboltDataType &&
  syste_profiler SPUSBDataType &&
  syste_profiler SPNetworkVolumeDataType &&
  syste_profiler SPAirPortDataType) | tee system_report.txt

echo "================="
echo "Generating PDF..."
cupsfilter system_report.txt > system_report.pdf
echo "System report generated in below location"
pwd
