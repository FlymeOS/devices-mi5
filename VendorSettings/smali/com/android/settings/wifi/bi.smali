.class public Lcom/android/settings/wifi/bi;
.super Ljava/lang/Object;
.source "XiaomiRouterUtils.java"


# static fields
.field private static aFr:Ljava/lang/String;

.field private static aFs:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/wifi/bi;->aFr:Ljava/lang/String;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/bi;->aFs:Ljava/util/HashMap;

    .line 37
    sget-object v0, Lcom/android/settings/wifi/bi;->aFs:Ljava/util/HashMap;

    const-string v1, "wx"

    const v2, 0x7f02030b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/android/settings/wifi/bi;->aFs:Ljava/util/HashMap;

    const-string v1, "dp"

    const v2, 0x7f020307

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/android/settings/wifi/bi;->aFs:Ljava/util/HashMap;

    const-string v1, "mt"

    const v2, 0x7f020309

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/android/settings/wifi/bi;->aFs:Ljava/util/HashMap;

    const-string v1, "nm"

    const v2, 0x7f02030a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/android/settings/wifi/bi;->aFs:Ljava/util/HashMap;

    const-string v1, "xiaomi"

    const v2, 0x7f020308

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method

.method public static D(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 45
    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/settings/wifi/bi;->aFr:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 48
    :cond_0
    sput-object p1, Lcom/android/settings/wifi/bi;->aFr:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v1, "com.android.browser"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const-string v1, "http://192.168.31.1"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 52
    invoke-static {p0, v0}, Lcom/android/settings/wifi/bi;->h(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method

.method public static c(Landroid/net/wifi/ScanResult;)Z
    .locals 2

    .prologue
    .line 68
    const-string v0, "configured"

    iget-object v1, p0, Landroid/net/wifi/ScanResult;->wpsState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static cF(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/settings/wifi/bi;->D(Landroid/content/Context;Ljava/lang/String;)V

    .line 32
    return-void
.end method

.method public static cl(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 76
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static cm(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "guest"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/net/wifi/ScanResult;)Z
    .locals 1

    .prologue
    .line 72
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/bi;->cl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/net/wifi/ScanResult;)I
    .locals 3

    .prologue
    .line 90
    if-eqz p0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->wpsDeviceName:Ljava/lang/String;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 93
    sget-object v1, Lcom/android/settings/wifi/bi;->aFs:Ljava/util/HashMap;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 94
    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/android/settings/wifi/bi;->aFs:Ljava/util/HashMap;

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public static h(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    .prologue
    .line 56
    const/4 v0, 0x0

    .line 58
    const/high16 v1, 0x14000000

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    const/4 v0, 0x1

    .line 64
    :goto_0
    return v0

    .line 61
    :catch_0
    move-exception v1

    .line 62
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method
