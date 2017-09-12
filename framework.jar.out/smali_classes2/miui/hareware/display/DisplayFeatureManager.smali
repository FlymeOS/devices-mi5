.class public Lmiui/hareware/display/DisplayFeatureManager;
.super Ljava/lang/Object;
.source "DisplayFeatureManager.java"


# static fields
.field private static final COLOR_SERVICE_NAME:Ljava/lang/String; = "com.qti.snapdragon.sdk.display.IColorService"

.field public static final DEFALUT_GAMUT_MODE:I = 0x0

.field public static final DEFALUT_SCREEN_CABC:I = 0x1

.field public static final DEFALUT_SCREEN_COLOR:I = 0x2

.field public static final DEFAULT_DISPLAY_EYECARE_LEVEL:I = 0x0

.field public static final DEFAULT_SCREEN_SATURATION:I

.field private static final DISPLAY_FEATURE_SERVICE:Ljava/lang/String; = "DisplayFeatureControl"

.field public static final PROPERTY_ASSERTIVE_DISPLAY:Ljava/lang/String; = "persist.sys.ltm_enable"

.field public static final PROPERTY_DISPLAY_EYECARE:Ljava/lang/String; = "persist.sys.display_eyecare"

.field public static final PROPERTY_GAMUT_MODE:Ljava/lang/String; = "persist.sys.gamut_mode"

.field public static final PROPERTY_SCREEN_CABC:Ljava/lang/String; = "persist.sys.display_cabc"

.field public static final PROPERTY_SCREEN_COLOR:Ljava/lang/String; = "persist.sys.display_prefer"

.field public static final PROPERTY_SCREEN_SATURATION:Ljava/lang/String; = "persist.sys.display_ce"

.field public static final SCREEN_COLOR_COOL:I = 0x3

.field public static final SCREEN_COLOR_NATURE:I = 0x2

.field public static final SCREEN_COLOR_WARM:I = 0x1

.field public static final SCREEN_SATURATION_STANDARD:I = 0xa

.field public static final SCREEN_SATURATION_VIVID:I = 0xb

.field private static TAG:Ljava/lang/String; = null

.field private static final TRANSACTION_setActiveMode:I = 0x6

.field private static final TRANSACTION_setDefaultMode:I = 0xc

.field private static sInstance:Lmiui/hareware/display/DisplayFeatureManager;


# instance fields
.field private mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-string v0, "DisplayFeatureManager"

    sput-object v0, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    .line 125
    invoke-static {}, Lmiui/hareware/display/DisplayFeatureManager;->getDefaultScreenSaturation()I

    move-result v0

    sput v0, Lmiui/hareware/display/DisplayFeatureManager;->DEFAULT_SCREEN_SATURATION:I

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const-string v1, "DisplayFeatureControl"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 42
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 43
    new-instance v1, Lmiui/hareware/display/DisplayFeatureServiceProxy;

    invoke-direct {v1, v0}, Lmiui/hareware/display/DisplayFeatureServiceProxy;-><init>(Landroid/os/IBinder;)V

    iput-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    .line 45
    :cond_0
    return-void
.end method

.method private static getDefaultScreenSaturation()I
    .locals 3

    .prologue
    .line 128
    const/16 v0, 0xa

    .line 129
    .local v0, "defaultSaturationMode":I
    const-string v1, "is_hongmi"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    const/16 v0, 0xb

    .line 132
    :cond_0
    const-string v1, "display_ce"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public static getInstance()Lmiui/hareware/display/DisplayFeatureManager;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lmiui/hareware/display/DisplayFeatureManager;->sInstance:Lmiui/hareware/display/DisplayFeatureManager;

    if-nez v0, :cond_0

    .line 35
    new-instance v0, Lmiui/hareware/display/DisplayFeatureManager;

    invoke-direct {v0}, Lmiui/hareware/display/DisplayFeatureManager;-><init>()V

    sput-object v0, Lmiui/hareware/display/DisplayFeatureManager;->sInstance:Lmiui/hareware/display/DisplayFeatureManager;

    .line 37
    :cond_0
    sget-object v0, Lmiui/hareware/display/DisplayFeatureManager;->sInstance:Lmiui/hareware/display/DisplayFeatureManager;

    return-object v0
.end method

.method public static initColorService(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 48
    const-string v1, "is_xiaomi"

    invoke-static {v1, v3}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 50
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 51
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.qti.service.colorservice"

    const-string v2, "com.qti.service.colorservice.ColorServiceApp"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 52
    new-instance v1, Lmiui/hareware/display/DisplayFeatureManager$1;

    invoke-direct {v1}, Lmiui/hareware/display/DisplayFeatureManager$1;-><init>()V

    invoke-virtual {p0, v0, v1, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 62
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private setActiveMode(Landroid/os/IBinder;II)I
    .locals 5
    .param p1, "colorService"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "modeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 229
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 232
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-interface {p1, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 236
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 237
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 239
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    return v2

    .line 239
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method

.method private setDefaultMode(Landroid/os/IBinder;II)I
    .locals 5
    .param p1, "colorService"    # Landroid/os/IBinder;
    .param p2, "displayId"    # I
    .param p3, "modeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 249
    .local v0, "data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 252
    .local v1, "reply":Landroid/os/Parcel;
    :try_start_0
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 253
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 254
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-interface {p1, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 256
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 257
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 259
    .local v2, "result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 262
    return v2

    .line 259
    .end local v2    # "result":I
    :catchall_0
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 260
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v3
.end method


# virtual methods
.method public getColorPrefer()I
    .locals 2

    .prologue
    .line 86
    const-string v0, "persist.sys.display_prefer"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEyeCare()I
    .locals 2

    .prologue
    .line 115
    const-string v0, "persist.sys.display_eyecare"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenCabc()I
    .locals 2

    .prologue
    .line 169
    const-string v0, "persist.sys.display_cabc"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenGamut()I
    .locals 2

    .prologue
    .line 191
    const-string v0, "persist.sys.gamut_mode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getScreenSaturation()I
    .locals 2

    .prologue
    .line 147
    const-string v0, "persist.sys.display_ce"

    sget v1, Lmiui/hareware/display/DisplayFeatureManager;->DEFAULT_SCREEN_SATURATION:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAdEnable()Z
    .locals 2

    .prologue
    .line 213
    const-string v0, "persist.sys.ltm_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setAdEnable(Z)V
    .locals 5
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 202
    :try_start_0
    iget-object v2, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v2, :cond_1

    .line 203
    iget-object v2, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    const/16 v4, 0xff

    invoke-virtual {v2, v3, v1, v4}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setAd(III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_1
    :goto_0
    const-string v1, "persist.sys.ltm_enable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set assertive display error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setColorPrefer(I)V
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 75
    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setColorPrefer(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :cond_0
    :goto_0
    const-string v1, "persist.sys.display_prefer"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set color prefer error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setEyeCare(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 98
    const/4 v2, -0x1

    .line 99
    .local v2, "ret":I
    :try_start_0
    iget-object v3, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v3, :cond_0

    .line 100
    iget-object v3, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setEyeCare(II)I

    move-result v2

    .line 102
    :cond_0
    const-string v3, "com.qti.snapdragon.sdk.display.IColorService"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 103
    .local v0, "colorService":Landroid/os/IBinder;
    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    if-eqz v0, :cond_1

    .line 104
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p1}, Lmiui/hareware/display/DisplayFeatureManager;->setActiveMode(Landroid/os/IBinder;II)I

    .line 105
    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, p1}, Lmiui/hareware/display/DisplayFeatureManager;->setDefaultMode(Landroid/os/IBinder;II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v0    # "colorService":Landroid/os/IBinder;
    :cond_1
    :goto_0
    const-string v3, "persist.sys.display_eyecare"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v4, "set eye care error."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setScreenCabc(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 159
    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setCABC(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :cond_0
    :goto_0
    const-string v1, "persist.sys.display_cabc"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set screen cabc error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setScreenGamut(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 181
    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 182
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setGamutMode(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    :goto_0
    const-string v1, "persist.sys.gamut_mode"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-void

    .line 184
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set screen gamut error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setScreenSaturation(I)V
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 137
    :try_start_0
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    if-eqz v1, :cond_0

    .line 138
    iget-object v1, p0, Lmiui/hareware/display/DisplayFeatureManager;->mProxy:Lmiui/hareware/display/DisplayFeatureServiceProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lmiui/hareware/display/DisplayFeatureServiceProxy;->setCE(II)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :cond_0
    :goto_0
    const-string v1, "persist.sys.display_ce"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    return-void

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lmiui/hareware/display/DisplayFeatureManager;->TAG:Ljava/lang/String;

    const-string v2, "set screen ce error."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
