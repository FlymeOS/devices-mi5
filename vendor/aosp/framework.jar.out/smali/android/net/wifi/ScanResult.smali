.class public Landroid/net/wifi/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/ScanResult$InformationElement;
    }
.end annotation


# static fields
.field public static final AUTHENTICATION_ERROR:I = 0x80

.field public static final AUTO_JOIN_DISABLED:I = 0x20

.field public static final AUTO_ROAM_DISABLED:I = 0x10

.field public static final CHANNEL_WIDTH_160MHZ:I = 0x3

.field public static final CHANNEL_WIDTH_20MHZ:I = 0x0

.field public static final CHANNEL_WIDTH_40MHZ:I = 0x1

.field public static final CHANNEL_WIDTH_80MHZ:I = 0x2

.field public static final CHANNEL_WIDTH_80MHZ_PLUS_MHZ:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public static final ENABLED:I = 0x0

.field public static final FLAG_80211mc_RESPONDER:J = 0x2L

.field public static final FLAG_PASSPOINT_NETWORK:J = 0x1L

.field public static final UNSPECIFIED:I = -0x1


# instance fields
.field public BSSID:Ljava/lang/String;

.field public SSID:Ljava/lang/String;

.field public autoJoinStatus:I

.field public blackListTimestamp:J

.field public bytes:[B

.field public capabilities:Ljava/lang/String;

.field public centerFreq0:I

.field public centerFreq1:I

.field public channelWidth:I

.field public distanceCm:I

.field public distanceSdCm:I

.field public flags:J

.field public frequency:I

.field public informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

.field public is80211McRTTResponder:Z

.field public isAutoJoinCandidate:I

.field public level:I

.field public numConnection:I

.field public numIpConfigFailures:I

.field public numUsage:I

.field public operatorFriendlyName:Ljava/lang/CharSequence;

.field public seen:J

.field public timestamp:J

.field public untrusted:Z

.field public venueName:Ljava/lang/CharSequence;

.field public wifiSsid:Landroid/net/wifi/WifiSsid;

.field public wpsDeviceName:Ljava/lang/String;

.field public wpsState:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 587
    new-instance v0, Landroid/net/wifi/ScanResult$1;

    invoke-direct {v0}, Landroid/net/wifi/ScanResult$1;-><init>()V

    sput-object v0, Landroid/net/wifi/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 491
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/ScanResult;)V
    .locals 2
    .param p1, "source"    # Landroid/net/wifi/ScanResult;

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    if-eqz p1, :cond_0

    .line 457
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 458
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 459
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 460
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 461
    iget v0, p1, Landroid/net/wifi/ScanResult;->level:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 462
    iget v0, p1, Landroid/net/wifi/ScanResult;->frequency:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 463
    iget v0, p1, Landroid/net/wifi/ScanResult;->channelWidth:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 464
    iget v0, p1, Landroid/net/wifi/ScanResult;->centerFreq0:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 465
    iget v0, p1, Landroid/net/wifi/ScanResult;->centerFreq1:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 466
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 467
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceCm:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 468
    iget v0, p1, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 469
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->seen:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->seen:J

    .line 470
    iget v0, p1, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    .line 471
    iget-boolean v0, p1, Landroid/net/wifi/ScanResult;->untrusted:Z

    iput-boolean v0, p0, Landroid/net/wifi/ScanResult;->untrusted:Z

    .line 472
    iget v0, p1, Landroid/net/wifi/ScanResult;->numConnection:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->numConnection:I

    .line 473
    iget v0, p1, Landroid/net/wifi/ScanResult;->numUsage:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->numUsage:I

    .line 474
    iget v0, p1, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    .line 475
    iget v0, p1, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    iput v0, p0, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    .line 476
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    .line 477
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    .line 478
    iget-wide v0, p1, Landroid/net/wifi/ScanResult;->flags:J

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 480
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->wpsState:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wpsState:Ljava/lang/String;

    .line 481
    iget-object v0, p1, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    .line 484
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJ)V
    .locals 10
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J

    .prologue
    .line 345
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v9}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;)V

    .line 346
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJII)V
    .locals 12
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I

    .prologue
    .line 375
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJIILjava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJIILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I
    .param p10, "wpsState"    # Ljava/lang/String;
    .param p11, "wpsDeviceName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 383
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 384
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 385
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 386
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 387
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 388
    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 389
    iput p8, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 390
    iput p9, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 391
    iput v1, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 392
    iput v1, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 393
    iput v1, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 394
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 396
    iput-object p10, p0, Landroid/net/wifi/ScanResult;->wpsState:Ljava/lang/String;

    .line 397
    iput-object p11, p0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    .line 399
    return-void

    .line 383
    :cond_0
    const-string v0, "<unknown ssid>"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;IIJLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "wpsState"    # Ljava/lang/String;
    .param p9, "wpsDeviceName"    # Ljava/lang/String;

    .prologue
    const/4 v1, -0x1

    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 352
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 353
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 354
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 355
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 356
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 357
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 358
    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 359
    iput v1, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 360
    iput v1, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 361
    iput v1, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 362
    iput v1, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 363
    iput v1, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 364
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 366
    iput-object p8, p0, Landroid/net/wifi/ScanResult;->wpsState:Ljava/lang/String;

    .line 367
    iput-object p9, p0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    .line 369
    return-void

    .line 353
    :cond_0
    const-string v0, "<unknown ssid>"

    goto :goto_0
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIIIZ)V
    .locals 19
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "Ssid"    # Ljava/lang/String;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "caps"    # Ljava/lang/String;
    .param p5, "level"    # I
    .param p6, "frequency"    # I
    .param p7, "tsf"    # J
    .param p9, "distCm"    # I
    .param p10, "distSdCm"    # I
    .param p11, "channelWidth"    # I
    .param p12, "centerFreq0"    # I
    .param p13, "centerFreq1"    # I
    .param p14, "is80211McRTTResponder"    # Z

    .prologue
    .line 439
    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-direct/range {v1 .. v17}, Landroid/net/wifi/ScanResult;-><init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIIIZLjava/lang/String;Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/WifiSsid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIIIZLjava/lang/String;Ljava/lang/String;)V
    .locals 19
    .param p1, "wifiSsid"    # Landroid/net/wifi/WifiSsid;
    .param p2, "Ssid"    # Ljava/lang/String;
    .param p3, "BSSID"    # Ljava/lang/String;
    .param p4, "caps"    # Ljava/lang/String;
    .param p5, "level"    # I
    .param p6, "frequency"    # I
    .param p7, "tsf"    # J
    .param p9, "distCm"    # I
    .param p10, "distSdCm"    # I
    .param p11, "channelWidth"    # I
    .param p12, "centerFreq0"    # I
    .param p13, "centerFreq1"    # I
    .param p14, "is80211McRTTResponder"    # Z
    .param p15, "wpsState"    # Ljava/lang/String;
    .param p16, "wpsDeviceName"    # Ljava/lang/String;

    .prologue
    .line 448
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    invoke-direct/range {v2 .. v17}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIIIZLjava/lang/String;Ljava/lang/String;)V

    .line 451
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    .line 452
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIIIZ)V
    .locals 16
    .param p1, "Ssid"    # Ljava/lang/String;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I
    .param p10, "channelWidth"    # I
    .param p11, "centerFreq0"    # I
    .param p12, "centerFreq1"    # I
    .param p13, "is80211McRTTResponder"    # Z

    .prologue
    .line 406
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move/from16 v13, p13

    invoke-direct/range {v0 .. v15}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIIIZLjava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJIIIIIZLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "Ssid"    # Ljava/lang/String;
    .param p2, "BSSID"    # Ljava/lang/String;
    .param p3, "caps"    # Ljava/lang/String;
    .param p4, "level"    # I
    .param p5, "frequency"    # I
    .param p6, "tsf"    # J
    .param p8, "distCm"    # I
    .param p9, "distSdCm"    # I
    .param p10, "channelWidth"    # I
    .param p11, "centerFreq0"    # I
    .param p12, "centerFreq1"    # I
    .param p13, "is80211McRTTResponder"    # Z
    .param p14, "wpsState"    # Ljava/lang/String;
    .param p15, "wpsDeviceName"    # Ljava/lang/String;

    .prologue
    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 412
    iput-object p1, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 413
    iput-object p2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    .line 414
    iput-object p3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 415
    iput p4, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 416
    iput p5, p0, Landroid/net/wifi/ScanResult;->frequency:I

    .line 417
    iput-wide p6, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    .line 418
    iput p8, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    .line 419
    iput p9, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    .line 420
    iput p10, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    .line 421
    iput p11, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    .line 422
    move/from16 v0, p12

    iput v0, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    .line 423
    if-eqz p13, :cond_0

    .line 424
    const-wide/16 v2, 0x2

    iput-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 429
    :goto_0
    move-object/from16 v0, p14

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wpsState:Ljava/lang/String;

    .line 430
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    .line 432
    return-void

    .line 426
    :cond_0
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    goto :goto_0
.end method

.method public static is24GHz(I)Z
    .locals 1
    .param p0, "freq"    # I

    .prologue
    .line 284
    const/16 v0, 0x960

    if-le p0, v0, :cond_0

    const/16 v0, 0x9c4

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static is5GHz(I)Z
    .locals 1
    .param p0, "freq"    # I

    .prologue
    .line 299
    const/16 v0, 0x1324

    if-le p0, v0, :cond_0

    const/16 v0, 0x170c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public averageRssi(IJI)V
    .locals 10
    .param p1, "previousRssi"    # I
    .param p2, "previousSeen"    # J
    .param p4, "maxAge"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 136
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    .line 139
    :cond_0
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    sub-long v0, v4, p2

    .line 141
    .local v0, "age":J
    cmp-long v4, p2, v6

    if-lez v4, :cond_1

    cmp-long v4, v0, v6

    if-lez v4, :cond_1

    div-int/lit8 v4, p4, 0x2

    int-to-long v4, v4

    cmp-long v4, v0, v4

    if-gez v4, :cond_1

    .line 143
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    long-to-double v6, v0

    int-to-double v8, p4

    div-double/2addr v6, v8

    sub-double v2, v4, v6

    .line 144
    .local v2, "alpha":D
    iget v4, p0, Landroid/net/wifi/ScanResult;->level:I

    int-to-double v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v2

    mul-double/2addr v4, v6

    int-to-double v6, p1

    mul-double/2addr v6, v2

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Landroid/net/wifi/ScanResult;->level:I

    .line 146
    .end local v2    # "alpha":D
    :cond_1
    return-void
.end method

.method public clearFlag(J)V
    .locals 5
    .param p1, "flag"    # J

    .prologue
    .line 246
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    and-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 247
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 537
    const/4 v0, 0x0

    return v0
.end method

.method public is24GHz()Z
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is24GHz(I)Z

    move-result v0

    return v0
.end method

.method public is5GHz()Z
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v0}, Landroid/net/wifi/ScanResult;->is5GHz(I)Z

    move-result v0

    return v0
.end method

.method public is80211mcResponder()Z
    .locals 4

    .prologue
    .line 250
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPasspointNetwork()Z
    .locals 4

    .prologue
    .line 254
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v2, 0x1

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

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
    .line 177
    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 178
    :cond_0
    if-nez p1, :cond_2

    .line 179
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    .line 183
    :cond_1
    :goto_0
    iput p1, p0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    .line 184
    return-void

    .line 180
    :cond_2
    iget v0, p0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    if-le p1, v0, :cond_1

    .line 181
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->blackListTimestamp:J

    goto :goto_0
.end method

.method public setFlag(J)V
    .locals 3
    .param p1, "flag"    # J

    .prologue
    .line 237
    iget-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    or-long/2addr v0, p1

    iput-wide v0, p0, Landroid/net/wifi/ScanResult;->flags:J

    .line 238
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, -0x1

    .line 495
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 496
    .local v1, "sb":Ljava/lang/StringBuffer;
    const-string v0, "<none>"

    .line 498
    .local v0, "none":Ljava/lang/String;
    const-string v2, "SSID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-nez v2, :cond_1

    const-string v2, "<unknown ssid>"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", BSSID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    if-nez v2, :cond_2

    move-object v2, v0

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", capabilities: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-nez v3, :cond_3

    .end local v0    # "none":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", level: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 511
    const-string v2, ", distance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    if-eq v2, v6, :cond_4

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "(cm)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 513
    const-string v2, ", distanceSd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    if-eq v2, v6, :cond_5

    iget v2, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "(cm)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 516
    const-string v2, ", passpoint: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 517
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v4, 0x1

    and-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-eqz v2, :cond_6

    const-string/jumbo v2, "yes"

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 518
    iget v2, p0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    if-eqz v2, :cond_0

    .line 519
    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 521
    :cond_0
    const-string v2, ", ChannelBandwidth: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 522
    const-string v2, ", centerFreq0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 523
    const-string v2, ", centerFreq1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget v3, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 524
    const-string v2, ", 80211mcResponder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 525
    iget-wide v2, p0, Landroid/net/wifi/ScanResult;->flags:J

    const-wide/16 v4, 0x2

    and-long/2addr v2, v4

    cmp-long v2, v2, v8

    if-eqz v2, :cond_7

    const-string/jumbo v2, "is supported"

    :goto_6
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 527
    const-string v2, ", wpsState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->wpsState:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ", wpsDeviceName :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 532
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 498
    .restart local v0    # "none":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    goto/16 :goto_0

    :cond_2
    iget-object v2, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    goto/16 :goto_2

    .line 511
    .end local v0    # "none":Ljava/lang/String;
    :cond_4
    const-string v2, "?"

    goto/16 :goto_3

    .line 513
    :cond_5
    const-string v2, "?"

    goto/16 :goto_4

    .line 517
    :cond_6
    const-string/jumbo v2, "no"

    goto :goto_5

    .line 525
    :cond_7
    const-string/jumbo v2, "is not supported"

    goto :goto_6
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 542
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    if-eqz v3, :cond_0

    .line 543
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 544
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->wifiSsid:Landroid/net/wifi/WifiSsid;

    invoke-virtual {v3, p1, p2}, Landroid/net/wifi/WifiSsid;->writeToParcel(Landroid/os/Parcel;I)V

    .line 548
    :goto_0
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 549
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 550
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 551
    iget v3, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    iget v3, p0, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 553
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 554
    iget v3, p0, Landroid/net/wifi/ScanResult;->distanceCm:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 555
    iget v3, p0, Landroid/net/wifi/ScanResult;->distanceSdCm:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 556
    iget v3, p0, Landroid/net/wifi/ScanResult;->channelWidth:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 557
    iget v3, p0, Landroid/net/wifi/ScanResult;->centerFreq0:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 558
    iget v3, p0, Landroid/net/wifi/ScanResult;->centerFreq1:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 560
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->wpsState:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 561
    iget-object v3, p0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 563
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->seen:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 564
    iget v3, p0, Landroid/net/wifi/ScanResult;->autoJoinStatus:I

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 565
    iget-boolean v3, p0, Landroid/net/wifi/ScanResult;->untrusted:Z

    if-eqz v3, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 566
    iget v1, p0, Landroid/net/wifi/ScanResult;->numConnection:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 567
    iget v1, p0, Landroid/net/wifi/ScanResult;->numUsage:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 568
    iget v1, p0, Landroid/net/wifi/ScanResult;->numIpConfigFailures:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 569
    iget v1, p0, Landroid/net/wifi/ScanResult;->isAutoJoinCandidate:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 570
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->venueName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 571
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->operatorFriendlyName:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 572
    iget-wide v4, p0, Landroid/net/wifi/ScanResult;->flags:J

    invoke-virtual {p1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    .line 574
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    if-eqz v1, :cond_4

    .line 575
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 576
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    .line 577
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/net/wifi/ScanResult$InformationElement;->id:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    array-length v1, v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 579
    iget-object v1, p0, Landroid/net/wifi/ScanResult;->informationElements:[Landroid/net/wifi/ScanResult$InformationElement;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/net/wifi/ScanResult$InformationElement;->bytes:[B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 576
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 546
    .end local v0    # "i":I
    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :cond_1
    move v1, v2

    .line 565
    goto :goto_1

    .line 570
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 571
    :cond_3
    const-string v1, ""

    goto :goto_3

    .line 582
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 584
    :cond_5
    return-void
.end method
