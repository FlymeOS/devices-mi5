.class public Landroid/app/MobileDataUtils;
.super Landroid/app/BaseMobileDataUtils;
.source "MobileDataUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/app/BaseMobileDataUtils;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/app/MobileDataUtils;
    .locals 3

    .prologue
    .line 15
    :try_start_0
    const-string/jumbo v2, "miui.msim.util.MSimMobileDataUtils"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 16
    .local v1, "mobileDataUtilsFactory":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/MobileDataUtils;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-object v0

    .line 20
    :catch_0
    move-exception v2

    .line 23
    :cond_0
    new-instance v0, Landroid/app/MobileDataUtils;

    invoke-direct {v0}, Landroid/app/MobileDataUtils;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public enableMobileData(Landroid/content/Context;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "isEnable"    # Z

    .prologue
    .line 46
    const-string/jumbo v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 48
    .local v0, "telephony":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 49
    return-void
.end method

.method public getMobileDataUri(I)Landroid/net/Uri;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mobile_data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public registerContentObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .prologue
    const/4 v4, 0x0

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/MobileDataUtils;->getMobileDataUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 31
    const-string/jumbo v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 33
    .local v1, "telephony":Landroid/telephony/TelephonyManager;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0, v0}, Landroid/app/MobileDataUtils;->getMobileDataUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v4, p2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 33
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    return-void
.end method
