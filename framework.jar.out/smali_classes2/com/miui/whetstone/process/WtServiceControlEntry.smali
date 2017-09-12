.class public Lcom/miui/whetstone/process/WtServiceControlEntry;
.super Ljava/lang/Object;
.source "WtServiceControlEntry.java"

# interfaces
.implements Ljava/util/Observer;


# static fields
.field private static mSCE:Lcom/miui/whetstone/process/WtServiceControlEntry;

.field private static mServiceControlWhitelist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mSCE:Lcom/miui/whetstone/process/WtServiceControlEntry;

    .line 20
    sput-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    .line 23
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    const-string v1, "com.android.cts"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 26
    return-void
.end method

.method public static addAppToServiceControlWhitelist(Ljava/lang/String;)V
    .locals 1
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 60
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    return-void
.end method

.method public static addAppToServiceControlWhitelist(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "listPkg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    .line 65
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 67
    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/miui/whetstone/process/WtServiceControlEntry;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mSCE:Lcom/miui/whetstone/process/WtServiceControlEntry;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/miui/whetstone/process/WtServiceControlEntry;

    invoke-direct {v0}, Lcom/miui/whetstone/process/WtServiceControlEntry;-><init>()V

    sput-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mSCE:Lcom/miui/whetstone/process/WtServiceControlEntry;

    .line 31
    :cond_0
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mSCE:Lcom/miui/whetstone/process/WtServiceControlEntry;

    return-object v0
.end method

.method public static isAppInServiceControlWhitelist(Ljava/lang/String;)Z
    .locals 1
    .param p0, "appName"    # Ljava/lang/String;

    .prologue
    .line 89
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isServiceControlEnabled()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getWhetstoneSystemSetting()Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    move-result-object v0

    .line 81
    .local v0, "whetstoneSetting":Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;
    if-eqz v0, :cond_0

    .line 82
    const-string v2, "servicecontrol_enabled"

    invoke-virtual {v0, v2, v1}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->getCommonConfigInBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 84
    :cond_0
    return v1
.end method

.method public static removeAppFromServiceControlWhitelist(Ljava/lang/String;)V
    .locals 2
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    const-string v0, "ServiceControlEntry"

    const-string v1, "could not remove an nonexist package from whitelist"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :goto_0
    return-void

    .line 74
    :cond_0
    sget-object v0, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private setServiceControlWhitelist()V
    .locals 7

    .prologue
    .line 40
    sget-object v5, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->clear()V

    .line 41
    sget-object v5, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    const-string v6, "com.android.cts"

    invoke-interface {v5, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 42
    invoke-static {}, Lcom/miui/whetstone/client/WhetstoneClientManager;->getWhetstoneSystemSetting()Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;

    move-result-object v4

    .line 43
    .local v4, "whetstoneSetting":Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;
    if-eqz v4, :cond_0

    .line 44
    const-string v5, "servicecontrol_whitelist"

    invoke-virtual {v4, v5}, Lcom/miui/whetstone/strategy/WhetstoneSystemSetting;->getCommonConfigInJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 45
    .local v2, "jsonArray":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 47
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 48
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, "pkgName":Ljava/lang/String;
    sget-object v5, Lcom/miui/whetstone/process/WtServiceControlEntry;->mServiceControlWhitelist:Ljava/util/Set;

    invoke-interface {v5, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v3    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 57
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "i":I
    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_0
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .param p1, "obj"    # Ljava/util/Observable;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miui/whetstone/process/WtServiceControlEntry;->setServiceControlWhitelist()V

    .line 37
    return-void
.end method
