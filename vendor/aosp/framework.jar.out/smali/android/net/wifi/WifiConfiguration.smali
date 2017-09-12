.class public Landroid/net/wifi/WifiConfiguration;
.super Ljava/lang/Object;
.source "WifiConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiConfiguration$Visibility;,
        Landroid/net/wifi/WifiConfiguration$Status;,
        Landroid/net/wifi/WifiConfiguration$GroupCipher;,
        Landroid/net/wifi/WifiConfiguration$PairwiseCipher;,
        Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;,
        Landroid/net/wifi/WifiConfiguration$Protocol;,
        Landroid/net/wifi/WifiConfiguration$KeyMgmt;
    }
.end annotation


# static fields
.field public static final AUTO_JOIN_DELETED:I = 0xc8

.field public static final AUTO_JOIN_DISABLED_NO_CREDENTIALS:I = 0xa0

.field public static final AUTO_JOIN_DISABLED_ON_AUTH_FAILURE:I = 0x80

.field public static final AUTO_JOIN_DISABLED_USER_ACTION:I = 0xa1

.field public static final AUTO_JOIN_ENABLED:I = 0x0

.field public static final AUTO_JOIN_TEMPORARY_DISABLED:I = 0x1

.field public static final AUTO_JOIN_TEMPORARY_DISABLED_AT_SUPPLICANT:I = 0x40

.field public static final AUTO_JOIN_TEMPORARY_DISABLED_LINK_ERRORS:I = 0x20

.field public static A_BAND_PREFERENCE_RSSI_THRESHOLD:I = 0x0

.field public static BAD_RSSI_24:I = 0x0

.field public static BAD_RSSI_5:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED_ASSOCIATION_REJECT:I = 0x4

.field public static final DISABLED_AUTH_FAILURE:I = 0x3

.field public static final DISABLED_BY_WIFI_MANAGER:I = 0x5

.field public static final DISABLED_DHCP_FAILURE:I = 0x2

.field public static final DISABLED_DNS_FAILURE:I = 0x1

.field public static final DISABLED_UNKNOWN_REASON:I = 0x0

.field public static GOOD_RSSI_24:I = 0x0

.field public static GOOD_RSSI_5:I = 0x0

.field public static G_BAND_PREFERENCE_RSSI_THRESHOLD:I = 0x0

.field public static HOME_NETWORK_RSSI_BOOST:I = 0x0

.field public static INITIAL_AUTO_JOIN_ATTEMPT_MIN_24:I = 0x0

.field public static INITIAL_AUTO_JOIN_ATTEMPT_MIN_5:I = 0x0

.field public static final INVALID_NETWORK_ID:I = -0x1

.field public static INVALID_RSSI:I = 0x0

.field public static LOW_RSSI_24:I = 0x0

.field public static LOW_RSSI_5:I = 0x0

.field public static MAX_INITIAL_AUTO_JOIN_RSSI_BOOST:I = 0x0

.field public static ROAMING_FAILURE_AUTH_FAILURE:I = 0x0

.field public static ROAMING_FAILURE_IP_CONFIG:I = 0x0

.field public static final SIMNumVarName:Ljava/lang/String; = "sim_num"

.field private static final TAG:Ljava/lang/String; = "WifiConfiguration"

.field public static UNBLACKLIST_THRESHOLD_24_HARD:I = 0x0

.field public static UNBLACKLIST_THRESHOLD_24_SOFT:I = 0x0

.field public static UNBLACKLIST_THRESHOLD_5_HARD:I = 0x0

.field public static UNBLACKLIST_THRESHOLD_5_SOFT:I = 0x0

.field public static final UNKNOWN_UID:I = -0x1

.field public static UNWANTED_BLACKLIST_HARD_BUMP:I = 0x0

.field public static UNWANTED_BLACKLIST_SOFT_BUMP:I = 0x0

.field public static UNWANTED_BLACKLIST_SOFT_RSSI_24:I = 0x0

.field public static UNWANTED_BLACKLIST_SOFT_RSSI_5:I = 0x0

.field public static final USER_APPROVED:I = 0x1

.field public static final USER_BANNED:I = 0x2

.field public static final USER_PENDING:I = 0x3

.field public static final USER_UNSPECIFIED:I = 0x0

.field public static final bssidVarName:Ljava/lang/String; = "bssid"

.field public static final hiddenSSIDVarName:Ljava/lang/String; = "scan_ssid"

.field public static final pmfVarName:Ljava/lang/String; = "ieee80211w"

.field public static final priorityVarName:Ljava/lang/String; = "priority"

.field public static final pskVarName:Ljava/lang/String; = "psk"

.field public static final ssidVarName:Ljava/lang/String; = "ssid"

.field public static final updateIdentiferVarName:Ljava/lang/String; = "update_identifier"

.field public static final wapiAsCertFileVarName:Ljava/lang/String; = "as_cert_file"

.field public static final wapiPskTypeVarName:Ljava/lang/String; = "wapi_key_type"

.field public static final wapiPskVarName:Ljava/lang/String; = "wapi_psk"

.field public static final wapiUserCertFileVarName:Ljava/lang/String; = "user_cert_file"

.field public static final wepKeyVarNames:[Ljava/lang/String;

.field public static final wepTxKeyIdxVarName:Ljava/lang/String; = "wep_tx_keyidx"


# instance fields
.field public BSSID:Ljava/lang/String;

.field public FQDN:Ljava/lang/String;

.field public SIMNum:I

.field public SSID:Ljava/lang/String;

.field public allowedAuthAlgorithms:Ljava/util/BitSet;

.field public allowedGroupCiphers:Ljava/util/BitSet;

.field public allowedKeyManagement:Ljava/util/BitSet;

.field public allowedPairwiseCiphers:Ljava/util/BitSet;

.field public allowedProtocols:Ljava/util/BitSet;

.field public apBand:I

.field public apChannel:I

.field public autoJoinBSSID:Ljava/lang/String;

.field public autoJoinBailedDueToLowRssi:Z

.field public autoJoinStatus:I

.field public autoJoinUseAggressiveJoinAttemptThreshold:I

.field public blackListTimestamp:J

.field public connectChoices:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public creationTime:Ljava/lang/String;

.field public creatorName:Ljava/lang/String;

.field public creatorUid:I

.field public defaultGwMacAddress:Ljava/lang/String;

.field public dhcpServer:Ljava/lang/String;

.field public didSelfAdd:Z

.field public dirty:Z

.field public disableReason:I

.field public enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

.field public ephemeral:Z

.field public hiddenSSID:Z

.field public lastConnectUid:I

.field public lastConnected:J

.field public lastConnectionFailure:J

.field public lastDisconnected:J

.field public lastFailure:Ljava/lang/String;

.field public lastRoamingFailure:J

.field public lastRoamingFailureReason:I

.field public lastUpdateName:Ljava/lang/String;

.field public lastUpdateUid:I

.field public linkedConfigurations:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mCachedConfigKey:Ljava/lang/String;

.field private mIpConfiguration:Landroid/net/IpConfiguration;

.field public networkId:I

.field public noInternetAccessExpected:Z

.field public numAssociation:I

.field public numAuthFailures:I

.field public numConnectionFailures:I

.field public numIpConfigFailures:I

.field public numNoInternetAccessReports:I

.field public numScorerOverride:I

.field public numScorerOverrideAndSwitchedNetwork:I

.field public numTicksAtBadRSSI:I

.field public numTicksAtLowRSSI:I

.field public numTicksAtNotHighRSSI:I

.field public numUserTriggeredJoinAttempts:I

.field public numUserTriggeredWifiDisableBadRSSI:I

.field public numUserTriggeredWifiDisableLowRSSI:I

.field public numUserTriggeredWifiDisableNotHighRSSI:I

.field public peerWifiConfiguration:Ljava/lang/String;

.field public preSharedKey:Ljava/lang/String;

.field public priority:I

.field public providerFriendlyName:Ljava/lang/String;

.field public requirePMF:Z

.field public roamingConsortiumIds:[J

.field public roamingFailureBlackListTimeMilli:J

.field public selfAdded:Z

.field public status:I

.field public updateIdentifier:Ljava/lang/String;

.field public updateTime:Ljava/lang/String;

.field public userApproved:I

.field public validatedInternetAccess:Z

.field public visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

.field public wapiASCert:Ljava/lang/String;

.field public wapiCertIndex:I

.field public wapiPsk:Ljava/lang/String;

.field public wapiPskType:I

.field public wapiUserCert:Ljava/lang/String;

.field public wepKeys:[Ljava/lang/String;

.field public wepTxKeyIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, -0x41

    const/16 v5, -0x46

    const/16 v4, -0x4d

    const/16 v3, -0x50

    .line 50
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "wep_key0"

    aput-object v2, v0, v1

    const-string/jumbo v1, "wep_key1"

    aput-object v1, v0, v7

    const/4 v1, 0x2

    const-string/jumbo v2, "wep_key2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "wep_key3"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    .line 504
    const/16 v0, -0x7f

    sput v0, Landroid/net/wifi/WifiConfiguration;->INVALID_RSSI:I

    .line 507
    sput v3, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_24:I

    .line 510
    sput v5, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_RSSI_5:I

    .line 513
    sput v6, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_24:I

    .line 516
    sput v4, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_24:I

    .line 519
    const/16 v0, -0x57

    sput v0, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_24:I

    .line 522
    const/16 v0, -0x3c

    sput v0, Landroid/net/wifi/WifiConfiguration;->GOOD_RSSI_5:I

    .line 525
    const/16 v0, -0x48

    sput v0, Landroid/net/wifi/WifiConfiguration;->LOW_RSSI_5:I

    .line 528
    const/16 v0, -0x52

    sput v0, Landroid/net/wifi/WifiConfiguration;->BAD_RSSI_5:I

    .line 531
    const/4 v0, 0x4

    sput v0, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_SOFT_BUMP:I

    .line 534
    const/16 v0, 0x8

    sput v0, Landroid/net/wifi/WifiConfiguration;->UNWANTED_BLACKLIST_HARD_BUMP:I

    .line 537
    sput v4, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_SOFT:I

    .line 540
    const/16 v0, -0x44

    sput v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_24_HARD:I

    .line 543
    const/16 v0, -0x3f

    sput v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_SOFT:I

    .line 546
    const/16 v0, -0x38

    sput v0, Landroid/net/wifi/WifiConfiguration;->UNBLACKLIST_THRESHOLD_5_HARD:I

    .line 549
    sput v3, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_24:I

    .line 552
    sput v5, Landroid/net/wifi/WifiConfiguration;->INITIAL_AUTO_JOIN_ATTEMPT_MIN_5:I

    .line 556
    sput v6, Landroid/net/wifi/WifiConfiguration;->A_BAND_PREFERENCE_RSSI_THRESHOLD:I

    .line 560
    const/16 v0, -0x4b

    sput v0, Landroid/net/wifi/WifiConfiguration;->G_BAND_PREFERENCE_RSSI_THRESHOLD:I

    .line 569
    const/4 v0, 0x5

    sput v0, Landroid/net/wifi/WifiConfiguration;->HOME_NETWORK_RSSI_BOOST:I

    .line 575
    const/16 v0, 0x8

    sput v0, Landroid/net/wifi/WifiConfiguration;->MAX_INITIAL_AUTO_JOIN_RSSI_BOOST:I

    .line 801
    sput v7, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_IP_CONFIG:I

    .line 803
    const/4 v0, 0x2

    sput v0, Landroid/net/wifi/WifiConfiguration;->ROAMING_FAILURE_AUTH_FAILURE:I

    .line 1743
    new-instance v0, Landroid/net/wifi/WifiConfiguration$1;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration$1;-><init>()V

    sput-object v0, Landroid/net/wifi/WifiConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 964
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 284
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 491
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    .line 810
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 965
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 966
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 967
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 968
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 969
    new-array v1, v4, [J

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 970
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 971
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 972
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 973
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 974
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 975
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 976
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 977
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1}, Ljava/util/BitSet;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 978
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 979
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 980
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v5, v1, v0

    .line 979
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 983
    :cond_0
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 984
    iput-object v5, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    .line 985
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 986
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 988
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 989
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 990
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 991
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 992
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 993
    iput-boolean v4, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 994
    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 995
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 996
    iput v6, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 997
    iput v4, p0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    .line 998
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .param p1, "source"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 1554
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 284
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 491
    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    .line 810
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1555
    if-eqz p1, :cond_4

    .line 1556
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1557
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->status:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1558
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 1559
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    .line 1560
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1561
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1562
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    .line 1563
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .line 1564
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    .line 1565
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1567
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apBand:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 1568
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    .line 1571
    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    .line 1572
    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    .line 1573
    iput v5, p0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 1574
    iput v5, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    .line 1576
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .line 1577
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1578
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    .line 1577
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1581
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1582
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1583
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1584
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1585
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 1586
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    .line 1587
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 1588
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/BitSet;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    .line 1590
    new-instance v1, Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>(Landroid/net/wifi/WifiEnterpriseConfig;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 1592
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    .line 1594
    new-instance v1, Landroid/net/IpConfiguration;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-direct {v1, v2}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 1596
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1597
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    .line 1598
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1601
    :cond_1
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1603
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    .line 1604
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 1606
    :cond_2
    iput-object v4, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    .line 1607
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 1608
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    .line 1609
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    .line 1610
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    .line 1611
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    if-eqz v1, :cond_3

    .line 1612
    new-instance v1, Landroid/net/wifi/WifiConfiguration$Visibility;

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    invoke-direct {v1, v2}, Landroid/net/wifi/WifiConfiguration$Visibility;-><init>(Landroid/net/wifi/WifiConfiguration$Visibility;)V

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    .line 1615
    :cond_3
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->lastFailure:Ljava/lang/String;

    .line 1616
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    .line 1617
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    .line 1618
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    .line 1619
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    .line 1620
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    .line 1621
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    .line 1622
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->peerWifiConfiguration:Ljava/lang/String;

    .line 1623
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    .line 1624
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    .line 1625
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastDisconnected:J

    .line 1626
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    .line 1627
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    .line 1628
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    .line 1629
    iget-wide v2, p1, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    iput-wide v2, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    .line 1630
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    .line 1631
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    .line 1632
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    .line 1633
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    .line 1634
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    .line 1635
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    .line 1636
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    .line 1637
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    .line 1638
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    .line 1639
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    .line 1640
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    .line 1641
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    .line 1642
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    .line 1643
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    .line 1644
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    .line 1646
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    .line 1647
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 1648
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    .line 1649
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    .line 1650
    iget-boolean v1, p1, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    .line 1651
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    .line 1652
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    iput-object v1, p0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    .line 1653
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    iput v1, p0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    .line 1655
    .end local v0    # "i":I
    :cond_4
    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 1
    .param p0, "x0"    # Landroid/os/Parcel;

    .prologue
    .line 41
    invoke-static {p0}, Landroid/net/wifi/WifiConfiguration;->readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$102(Landroid/net/wifi/WifiConfiguration;Landroid/net/IpConfiguration;)Landroid/net/IpConfiguration;
    .locals 0
    .param p0, "x0"    # Landroid/net/wifi/WifiConfiguration;
    .param p1, "x1"    # Landroid/net/IpConfiguration;

    .prologue
    .line 41
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    return-object p1
.end method

.method public static configKey(Landroid/net/wifi/ScanResult;)Ljava/lang/String;
    .locals 4
    .param p0, "result"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 1464
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1467
    .local v0, "key":Ljava/lang/String;
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WEP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1468
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-WEP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1471
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "PSK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1472
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1475
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "EAP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "IEEE8021X"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1477
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1479
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WAPI-KEY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1482
    :cond_4
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v2, "WAPI-CERT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1485
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1489
    :cond_6
    return-object v0
.end method

.method private static readBitSet(Landroid/os/Parcel;)Ljava/util/BitSet;
    .locals 4
    .param p0, "src"    # Landroid/os/Parcel;

    .prologue
    .line 1365
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 1367
    .local v0, "cardinality":I
    new-instance v2, Ljava/util/BitSet;

    invoke-direct {v2}, Ljava/util/BitSet;-><init>()V

    .line 1368
    .local v2, "set":Ljava/util/BitSet;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1369
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1372
    :cond_0
    return-object v2
.end method

.method private trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1361
    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static userApprovedAsString(I)Ljava/lang/String;
    .locals 1
    .param p0, "userApproved"    # I

    .prologue
    .line 1311
    packed-switch p0, :pswitch_data_0

    .line 1319
    const-string v0, "INVALID"

    :goto_0
    return-object v0

    .line 1313
    :pswitch_0
    const-string v0, "USER_APPROVED"

    goto :goto_0

    .line 1315
    :pswitch_1
    const-string v0, "USER_BANNED"

    goto :goto_0

    .line 1317
    :pswitch_2
    const-string v0, "USER_UNSPECIFIED"

    goto :goto_0

    .line 1311
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V
    .locals 2
    .param p0, "dest"    # Landroid/os/Parcel;
    .param p1, "set"    # Ljava/util/BitSet;

    .prologue
    .line 1376
    const/4 v0, -0x1

    .line 1378
    .local v0, "nextSetBit":I
    invoke-virtual {p1}, Ljava/util/BitSet;->cardinality()I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1380
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p1, v1}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1381
    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 1383
    :cond_0
    return-void
.end method


# virtual methods
.method public configKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1457
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiConfiguration;->configKey(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public configKey(Z)Ljava/lang/String;
    .locals 8
    .param p1, "allowCached"    # Z

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 1421
    if-eqz p1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1422
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    .line 1450
    .local v0, "key":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 1423
    .end local v0    # "key":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1424
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_0

    .line 1428
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1430
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1448
    .restart local v0    # "key":Ljava/lang/String;
    :goto_1
    iput-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mCachedConfigKey:Ljava/lang/String;

    goto :goto_0

    .line 1431
    .end local v0    # "key":Ljava/lang/String;
    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1433
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_1

    .line 1434
    .end local v0    # "key":Ljava/lang/String;
    :cond_5
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aget-object v1, v1, v4

    if-eqz v1, :cond_6

    .line 1435
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-WEP"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_1

    .line 1438
    .end local v0    # "key":Ljava/lang/String;
    :cond_6
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto :goto_1

    .line 1441
    .end local v0    # "key":Ljava/lang/String;
    :cond_7
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1442
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto/16 :goto_1

    .line 1446
    .end local v0    # "key":Ljava/lang/String;
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "key":Ljava/lang/String;
    goto/16 :goto_1
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 1550
    const/4 v0, 0x0

    return v0
.end method

.method public getAuthType()I
    .locals 6

    .prologue
    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 1387
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5}, Ljava/util/BitSet;->cardinality()I

    move-result v5

    if-le v5, v0, :cond_0

    .line 1388
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "More than one auth type set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1390
    :cond_0
    iget-object v5, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1406
    :goto_0
    return v0

    .line 1392
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x6

    invoke-virtual {v0, v5}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1393
    const/4 v0, 0x6

    goto :goto_0

    .line 1394
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 1395
    goto :goto_0

    .line 1396
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 1397
    goto :goto_0

    .line 1400
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    .line 1401
    goto :goto_0

    .line 1402
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    .line 1403
    goto :goto_0

    .line 1406
    :cond_6
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHttpProxy()Landroid/net/ProxyInfo;
    .locals 1

    .prologue
    .line 1534
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    return-object v0
.end method

.method public getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;
    .locals 1

    .prologue
    .line 1514
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    return-object v0
.end method

.method public getIpConfiguration()Landroid/net/IpConfiguration;
    .locals 1

    .prologue
    .line 1494
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    return-object v0
.end method

.method public getKeyIdForCredentials(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 5
    .param p1, "current"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1332
    const/4 v1, 0x0

    .line 1336
    .local v1, "keyMgmt":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1337
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-nez v2, :cond_1

    .line 1338
    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    iput-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    .line 1340
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1341
    sget-object v2, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v2, v3

    .line 1343
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1347
    :cond_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1348
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Not an EAP network"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1354
    :catch_0
    move-exception v0

    .line 1355
    .local v0, "e":Ljava/lang/NullPointerException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Invalid config details"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1351
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v3}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p1, :cond_5

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    :goto_0
    invoke-virtual {v4, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->getKeyId(Landroid/net/wifi/WifiEnterpriseConfig;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/net/wifi/WifiConfiguration;->trimStringForKeyId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    return-object v2

    :cond_5
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getPrintableSsid()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/16 v4, 0x22

    .line 1290
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    .line 1306
    :goto_0
    return-object v2

    .line 1291
    :cond_0
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 1292
    .local v0, "length":I
    if-le v0, v7, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1

    .line 1293
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1300
    :cond_1
    const/4 v2, 0x3

    if-le v0, v2, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x50

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_2

    .line 1302
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/wifi/WifiSsid;->createFromAsciiEncoded(Ljava/lang/String;)Landroid/net/wifi/WifiSsid;

    move-result-object v1

    .line 1304
    .local v1, "wifiSsid":Landroid/net/wifi/WifiSsid;
    invoke-virtual {v1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1306
    .end local v1    # "wifiSsid":Landroid/net/wifi/WifiSsid;
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method public getProxySettings()Landroid/net/IpConfiguration$ProxySettings;
    .locals 1

    .prologue
    .line 1524
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iget-object v0, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    return-object v0
.end method

.method public getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;
    .locals 1

    .prologue
    .line 1504
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0}, Landroid/net/IpConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public hasNoInternetAccess()Z
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v0, :cond_0

    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnterprise()Z
    .locals 2

    .prologue
    .line 1029
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLinked(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 2
    .param p1, "config"    # Landroid/net/wifi/WifiConfiguration;

    .prologue
    .line 1015
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 1016
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->configKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1018
    const/4 v0, 0x1

    .line 1021
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPasspoint()Z
    .locals 2

    .prologue
    .line 1004
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAutoJoinStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .prologue
    .line 1035
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1036
    :cond_0
    if-nez p1, :cond_3

    .line 1037
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    .line 1041
    :cond_1
    :goto_0
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-eq p1, v0, :cond_2

    .line 1042
    iput p1, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    .line 1043
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->dirty:Z

    .line 1045
    :cond_2
    return-void

    .line 1038
    :cond_3
    iget v0, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-le p1, v0, :cond_1

    .line 1039
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    goto :goto_0
.end method

.method public setHttpProxy(Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "httpProxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 1539
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 1540
    return-void
.end method

.method public setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V
    .locals 1
    .param p1, "ipAssignment"    # Landroid/net/IpConfiguration$IpAssignment;

    .prologue
    .line 1519
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->ipAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 1520
    return-void
.end method

.method public setIpConfiguration(Landroid/net/IpConfiguration;)V
    .locals 0
    .param p1, "ipConfiguration"    # Landroid/net/IpConfiguration;

    .prologue
    .line 1499
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    .line 1500
    return-void
.end method

.method public setProxy(Landroid/net/IpConfiguration$ProxySettings;Landroid/net/ProxyInfo;)V
    .locals 1
    .param p1, "settings"    # Landroid/net/IpConfiguration$ProxySettings;
    .param p2, "proxy"    # Landroid/net/ProxyInfo;

    .prologue
    .line 1544
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1545
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p2, v0, Landroid/net/IpConfiguration;->httpProxy:Landroid/net/ProxyInfo;

    .line 1546
    return-void
.end method

.method public setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V
    .locals 1
    .param p1, "proxySettings"    # Landroid/net/IpConfiguration$ProxySettings;

    .prologue
    .line 1529
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    iput-object p1, v0, Landroid/net/IpConfiguration;->proxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 1530
    return-void
.end method

.method public setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V
    .locals 1
    .param p1, "staticIpConfiguration"    # Landroid/net/StaticIpConfiguration;

    .prologue
    .line 1509
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v0, p1}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    .line 1510
    return-void
.end method

.method public setVisibility(Landroid/net/wifi/WifiConfiguration$Visibility;)V
    .locals 0
    .param p1, "status"    # Landroid/net/wifi/WifiConfiguration$Visibility;

    .prologue
    .line 659
    iput-object p1, p0, Landroid/net/wifi/WifiConfiguration;->visibility:Landroid/net/wifi/WifiConfiguration$Visibility;

    .line 660
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 20

    .prologue
    .line 1049
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 1050
    .local v14, "sbuf":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    if-nez v15, :cond_11

    .line 1051
    const-string v15, "* "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1055
    :cond_0
    :goto_0
    const-string v15, "ID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " SSID: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " PROVIDER-NAME: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " BSSID: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " FQDN: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " PRIO: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0xa

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1060
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    if-lez v15, :cond_1

    .line 1061
    const-string v15, " numConnectFailures "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1063
    :cond_1
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    if-lez v15, :cond_2

    .line 1064
    const-string v15, " numIpConfigFailures "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1066
    :cond_2
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    if-lez v15, :cond_3

    .line 1067
    const-string v15, " numAuthFailures "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1069
    :cond_3
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    if-lez v15, :cond_4

    .line 1070
    const-string v15, " autoJoinStatus "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    :cond_4
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    if-lez v15, :cond_5

    .line 1073
    const-string v15, " disableReason "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    :cond_5
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    if-lez v15, :cond_6

    .line 1076
    const-string v15, " numAssociation "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1078
    :cond_6
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    if-lez v15, :cond_7

    .line 1079
    const-string v15, " numNoInternetAccessReports "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1080
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1082
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    if-eqz v15, :cond_8

    .line 1083
    const-string/jumbo v15, "update "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->updateTime:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1085
    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    if-eqz v15, :cond_9

    .line 1086
    const-string v15, "creation"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creationTime:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "\n"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    if-eqz v15, :cond_a

    const-string v15, " didSelfAdd"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1089
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v15, :cond_b

    const-string v15, " selfAdded"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1090
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v15, :cond_c

    const-string v15, " validatedInternetAccess"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    :cond_c
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v15, :cond_d

    const-string v15, " ephemeral"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1092
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-nez v15, :cond_e

    move-object/from16 v0, p0

    iget-boolean v15, v0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v15, :cond_f

    .line 1093
    :cond_e
    const-string v15, "\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1095
    :cond_f
    const-string v15, " KeyMgmt:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    const/4 v8, 0x0

    .local v8, "k":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    move-result v15

    if-ge v8, v15, :cond_13

    .line 1097
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v15, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_10

    .line 1098
    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1099
    sget-object v15, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    array-length v15, v15

    if-ge v8, v15, :cond_12

    .line 1100
    sget-object v15, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    aget-object v15, v15, v8

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1096
    :cond_10
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1052
    .end local v8    # "k":I
    :cond_11
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 1053
    const-string v15, "- DSBLE "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 1102
    .restart local v8    # "k":I
    :cond_12
    const-string v15, "??"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 1106
    :cond_13
    const-string v15, " Protocols:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    const/4 v12, 0x0

    .local v12, "p":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    move-result v15

    if-ge v12, v15, :cond_16

    .line 1108
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v15, v12}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_14

    .line 1109
    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1110
    sget-object v15, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    array-length v15, v15

    if-ge v12, v15, :cond_15

    .line 1111
    sget-object v15, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    aget-object v15, v15, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1107
    :cond_14
    :goto_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1113
    :cond_15
    const-string v15, "??"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 1117
    :cond_16
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1118
    const-string v15, " AuthAlgorithms:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    const/4 v2, 0x0

    .local v2, "a":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    move-result v15

    if-ge v2, v15, :cond_19

    .line 1120
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v15, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_17

    .line 1121
    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1122
    sget-object v15, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    array-length v15, v15

    if-ge v2, v15, :cond_18

    .line 1123
    sget-object v15, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    aget-object v15, v15, v2

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1119
    :cond_17
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 1125
    :cond_18
    const-string v15, "??"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 1129
    :cond_19
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1130
    const-string v15, " PairwiseCiphers:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    const/4 v13, 0x0

    .local v13, "pc":I
    :goto_7
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    move-result v15

    if-ge v13, v15, :cond_1c

    .line 1132
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v15, v13}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_1a

    .line 1133
    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1134
    sget-object v15, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    array-length v15, v15

    if-ge v13, v15, :cond_1b

    .line 1135
    sget-object v15, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    aget-object v15, v15, v13

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1131
    :cond_1a
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 1137
    :cond_1b
    const-string v15, "??"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 1141
    :cond_1c
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1142
    const-string v15, " GroupCiphers:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    const/4 v6, 0x0

    .local v6, "gc":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v15}, Ljava/util/BitSet;->size()I

    move-result v15

    if-ge v6, v15, :cond_1f

    .line 1144
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v15, v6}, Ljava/util/BitSet;->get(I)Z

    move-result v15

    if-eqz v15, :cond_1d

    .line 1145
    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1146
    sget-object v15, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    array-length v15, v15

    if-ge v6, v15, :cond_1e

    .line 1147
    sget-object v15, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    aget-object v15, v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1143
    :cond_1d
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 1149
    :cond_1e
    const-string v15, "??"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 1153
    :cond_1f
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " PSK: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1154
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v15, :cond_20

    .line 1155
    const/16 v15, 0x2a

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1157
    :cond_20
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " sim_num "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1158
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    if-lez v15, :cond_21

    .line 1159
    const/16 v15, 0x2a

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1161
    :cond_21
    const-string v15, "\nEnterprise config:\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1162
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1163
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1165
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    if-eqz v15, :cond_22

    .line 1166
    const-string v15, " WapiASCert: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1168
    :cond_22
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1169
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    if-eqz v15, :cond_23

    .line 1170
    const-string v15, " WapiUserCert: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1172
    :cond_23
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1173
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_24

    .line 1174
    const-string v15, " WapiCertIndex: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1176
    :cond_24
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1177
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v15, v0, :cond_25

    .line 1178
    const-string v15, " WapiPskType: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1180
    :cond_25
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1181
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    if-eqz v15, :cond_26

    .line 1182
    const-string v15, " wapiPsk: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x2a

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1186
    :cond_26
    const-string v15, "IP config:\n"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {v15}, Landroid/net/IpConfiguration;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    if-eqz v15, :cond_27

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " autoJoinBSSID="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1190
    :cond_27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1191
    .local v10, "now_ms":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_28

    .line 1192
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1193
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    move-wide/from16 v16, v0

    sub-long v4, v10, v16

    .line 1194
    .local v4, "diff":J
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-gtz v15, :cond_30

    .line 1195
    const-string v15, " blackListed since <incorrect>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1200
    .end local v4    # "diff":J
    :cond_28
    :goto_b
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    if-eqz v15, :cond_29

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " cuid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1201
    :cond_29
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    if-eqz v15, :cond_2a

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " cname="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    :cond_2a
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    if-eqz v15, :cond_2b

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " luid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    :cond_2b
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    if-eqz v15, :cond_2c

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " lname="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1204
    :cond_2c
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " lcuid="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1205
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " userApproved="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/net/wifi/WifiConfiguration;->userApprovedAsString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1206
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " noInternetAccessExpected="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1207
    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1209
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_2d

    .line 1210
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1211
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnected:J

    move-wide/from16 v16, v0

    sub-long v4, v10, v16

    .line 1212
    .restart local v4    # "diff":J
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-gtz v15, :cond_31

    .line 1213
    const-string/jumbo v15, "lastConnected since <incorrect>"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1218
    .end local v4    # "diff":J
    :cond_2d
    :goto_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_2e

    .line 1219
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1220
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    move-wide/from16 v16, v0

    sub-long v4, v10, v16

    .line 1221
    .restart local v4    # "diff":J
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-gtz v15, :cond_32

    .line 1222
    const-string/jumbo v15, "lastConnectionFailure since <incorrect> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1228
    .end local v4    # "diff":J
    :cond_2e
    :goto_d
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-eqz v15, :cond_2f

    .line 1229
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1230
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    move-wide/from16 v16, v0

    sub-long v4, v10, v16

    .line 1231
    .restart local v4    # "diff":J
    const-wide/16 v16, 0x0

    cmp-long v15, v4, v16

    if-gtz v15, :cond_33

    .line 1232
    const-string/jumbo v15, "lastRoamingFailure since <incorrect> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1238
    .end local v4    # "diff":J
    :cond_2f
    :goto_e
    const-string/jumbo v15, "roamingFailureBlackListTimeMilli: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1241
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    if-eqz v15, :cond_34

    .line 1242
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->linkedConfigurations:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_34

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1243
    .local v9, "key":Ljava/lang/String;
    const-string v15, " linked: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1244
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 1197
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "key":Ljava/lang/String;
    .restart local v4    # "diff":J
    :cond_30
    const-string v15, " blackListed: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v16, 0x3e8

    div-long v16, v4, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "sec "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_b

    .line 1215
    :cond_31
    const-string/jumbo v15, "lastConnected: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v16, 0x3e8

    div-long v16, v4, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "sec "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 1224
    :cond_32
    const-string/jumbo v15, "lastConnectionFailure: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v16, 0x3e8

    div-long v16, v4, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    const-string/jumbo v15, "sec "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 1234
    :cond_33
    const-string/jumbo v15, "lastRoamingFailure: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-wide/16 v16, 0x3e8

    div-long v16, v4, v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    const-string/jumbo v15, "sec "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_e

    .line 1247
    .end local v4    # "diff":J
    :cond_34
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    if-eqz v15, :cond_36

    .line 1248
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :cond_35
    :goto_10
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_36

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 1249
    .restart local v9    # "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/net/wifi/WifiConfiguration;->connectChoices:Ljava/util/HashMap;

    invoke-virtual {v15, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 1250
    .local v3, "choice":Ljava/lang/Integer;
    if-eqz v3, :cond_35

    .line 1251
    const-string v15, " choice: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1252
    const-string v15, " = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1253
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 1257
    .end local v3    # "choice":Ljava/lang/Integer;
    .end local v7    # "i$":Ljava/util/Iterator;
    .end local v9    # "key":Ljava/lang/String;
    :cond_36
    const-string/jumbo v15, "triggeredLow: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1258
    const-string v15, " triggeredBad: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1259
    const-string v15, " triggeredNotHigh: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1260
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1261
    const-string/jumbo v15, "ticksLow: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1262
    const-string v15, " ticksBad: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1263
    const-string v15, " ticksNotHigh: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1264
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1265
    const-string/jumbo v15, "triggeredJoin: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1266
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1267
    const-string v15, "autoJoinBailedDueToLowRssi: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 1268
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1269
    const-string v15, "autoJoinUseAggressiveJoinAttemptThreshold: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1270
    move-object/from16 v0, p0

    iget v15, v0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1271
    const/16 v15, 0xa

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1273
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    return-object v15
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 12
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1665
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1666
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->status:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1667
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->disableReason:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1668
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1669
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1670
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1671
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->apChannel:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1672
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinBSSID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1673
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1674
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1675
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    array-length v6, v6

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1676
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->roamingConsortiumIds:[J

    .local v0, "arr$":[J
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-wide v4, v0, v1

    .line 1677
    .local v4, "roamingConsortiumId":J
    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 1676
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1679
    .end local v4    # "roamingConsortiumId":J
    :cond_0
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1681
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wapiASCert:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1682
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1683
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->wapiPsk:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1684
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->wapiPskType:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1686
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 1687
    .local v3, "wepKey":Ljava/lang/String;
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1686
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1689
    .end local v3    # "wepKey":Ljava/lang/String;
    :cond_1
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1690
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1691
    iget-boolean v6, p0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v6, :cond_2

    move v6, v7

    :goto_2
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1692
    iget-boolean v6, p0, Landroid/net/wifi/WifiConfiguration;->requirePMF:Z

    if-eqz v6, :cond_3

    move v6, v7

    :goto_3
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1693
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->updateIdentifier:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1695
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-static {p1, v6}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1696
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-static {p1, v6}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1697
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-static {p1, v6}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1698
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-static {p1, v6}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1699
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-static {p1, v6}, Landroid/net/wifi/WifiConfiguration;->writeBitSet(Landroid/os/Parcel;Ljava/util/BitSet;)V

    .line 1701
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1, v6, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1703
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->mIpConfiguration:Landroid/net/IpConfiguration;

    invoke-virtual {p1, v6, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 1704
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->dhcpServer:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1705
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->defaultGwMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1706
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinStatus:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1707
    iget-boolean v6, p0, Landroid/net/wifi/WifiConfiguration;->selfAdded:Z

    if-eqz v6, :cond_4

    move v6, v7

    :goto_4
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1708
    iget-boolean v6, p0, Landroid/net/wifi/WifiConfiguration;->didSelfAdd:Z

    if-eqz v6, :cond_5

    move v6, v7

    :goto_5
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1709
    iget-boolean v6, p0, Landroid/net/wifi/WifiConfiguration;->validatedInternetAccess:Z

    if-eqz v6, :cond_6

    move v6, v7

    :goto_6
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1710
    iget-boolean v6, p0, Landroid/net/wifi/WifiConfiguration;->ephemeral:Z

    if-eqz v6, :cond_7

    move v6, v7

    :goto_7
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1711
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1712
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectUid:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1713
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateUid:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1714
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1715
    iget-object v6, p0, Landroid/net/wifi/WifiConfiguration;->lastUpdateName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1716
    iget-wide v10, p0, Landroid/net/wifi/WifiConfiguration;->blackListTimestamp:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 1717
    iget-wide v10, p0, Landroid/net/wifi/WifiConfiguration;->lastConnectionFailure:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 1718
    iget-wide v10, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailure:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 1719
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->lastRoamingFailureReason:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1720
    iget-wide v10, p0, Landroid/net/wifi/WifiConfiguration;->roamingFailureBlackListTimeMilli:J

    invoke-virtual {p1, v10, v11}, Landroid/os/Parcel;->writeLong(J)V

    .line 1721
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->numConnectionFailures:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1722
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->numIpConfigFailures:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1723
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->numAuthFailures:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1724
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverride:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1725
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->numScorerOverrideAndSwitchedNetwork:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1726
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->numAssociation:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1727
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableLowRSSI:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1728
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableBadRSSI:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1729
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredWifiDisableNotHighRSSI:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1730
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtLowRSSI:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1731
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtBadRSSI:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1732
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->numTicksAtNotHighRSSI:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1733
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->numUserTriggeredJoinAttempts:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1734
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinUseAggressiveJoinAttemptThreshold:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1735
    iget-boolean v6, p0, Landroid/net/wifi/WifiConfiguration;->autoJoinBailedDueToLowRssi:Z

    if-eqz v6, :cond_8

    move v6, v7

    :goto_8
    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1736
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->userApproved:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1737
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->numNoInternetAccessReports:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1738
    iget-boolean v6, p0, Landroid/net/wifi/WifiConfiguration;->noInternetAccessExpected:Z

    if-eqz v6, :cond_9

    :goto_9
    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1739
    iget v6, p0, Landroid/net/wifi/WifiConfiguration;->SIMNum:I

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 1740
    return-void

    :cond_2
    move v6, v8

    .line 1691
    goto/16 :goto_2

    :cond_3
    move v6, v8

    .line 1692
    goto/16 :goto_3

    :cond_4
    move v6, v8

    .line 1707
    goto/16 :goto_4

    :cond_5
    move v6, v8

    .line 1708
    goto/16 :goto_5

    :cond_6
    move v6, v8

    .line 1709
    goto/16 :goto_6

    :cond_7
    move v6, v8

    .line 1710
    goto/16 :goto_7

    :cond_8
    move v6, v8

    .line 1735
    goto :goto_8

    :cond_9
    move v7, v8

    .line 1738
    goto :goto_9
.end method
