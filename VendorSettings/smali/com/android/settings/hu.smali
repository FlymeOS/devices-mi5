.class public Lcom/android/vendorsettings/hu;
.super Lmiui/external/b;
.source "SettingsApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final zC:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lcom/android/vendorsettings/hu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/vendorsettings/hu;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lmiui/external/b;-><init>()V

    .line 43
    const-string v0, "SECURITY_TOPIC"

    iput-object v0, p0, Lcom/android/vendorsettings/hu;->zC:Ljava/lang/String;

    return-void
.end method

.method private U(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 82
    const-string v0, "key_delete_v5_shortcuts"

    .line 83
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 84
    const-string v1, "key_delete_v5_shortcuts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 85
    if-nez v1, :cond_0

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vendorsettings/ShortcutHelper;->V(Landroid/content/Context;)Lcom/android/vendorsettings/ShortcutHelper;

    move-result-object v1

    .line 87
    sget-object v2, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Ak:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/ShortcutHelper;->a(Lcom/android/vendorsettings/ShortcutHelper$Shortcut;)V

    .line 88
    sget-object v2, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Al:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/ShortcutHelper;->a(Lcom/android/vendorsettings/ShortcutHelper$Shortcut;)V

    .line 89
    sget-object v2, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Am:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/ShortcutHelper;->a(Lcom/android/vendorsettings/ShortcutHelper$Shortcut;)V

    .line 90
    sget-object v2, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->An:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/ShortcutHelper;->a(Lcom/android/vendorsettings/ShortcutHelper$Shortcut;)V

    .line 91
    sget-object v2, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Ao:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/ShortcutHelper;->a(Lcom/android/vendorsettings/ShortcutHelper$Shortcut;)V

    .line 92
    sget-object v2, Lcom/android/vendorsettings/ShortcutHelper$Shortcut;->Ap:Lcom/android/vendorsettings/ShortcutHelper$Shortcut;

    invoke-virtual {v1, v2}, Lcom/android/vendorsettings/ShortcutHelper;->a(Lcom/android/vendorsettings/ShortcutHelper$Shortcut;)V

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "key_delete_v5_shortcuts"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 47
    invoke-super {p0}, Lmiui/external/b;->onCreate()V

    .line 49
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 50
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 54
    :cond_0
    const-string v0, "com.xiaomi.xmsf"

    invoke-static {v0}, Lcom/xiaomi/accountsdk/activate/ActivateManager;->setActivateServiceHostPackage(Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p0}, Lcom/android/vendorsettings/hu;->U(Landroid/content/Context;)V

    .line 59
    invoke-static {}, Lcom/android/vendorsettings/cloud/h;->on()V

    .line 60
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_1

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/android/vendorsettings/hu;->Mt()Lmiui/external/a;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/external/a;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "2882303761517161661"

    const-string v2, "5881716163661"

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->initialize(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/CustomSettings;->setUseSystemUploadingService(Z)V

    .line 71
    const-wide/16 v0, 0x0

    invoke-static {v4, v0, v1}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->setUploadPolicy(IJ)V

    .line 72
    invoke-static {}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->enableLog()V

    .line 73
    invoke-static {v4}, Lcom/xiaomi/mistatistic/sdk/MiStatInterface;->enableExceptionCatcher(Z)V

    .line 76
    invoke-static {p0}, Lcom/android/vendorsettings/cloud/CloudJobService;->aJ(Landroid/content/Context;)V

    .line 77
    invoke-static {p0}, Lcom/android/vendorsettings/cloud/ConnectivityChangeJobService;->aJ(Landroid/content/Context;)V

    .line 78
    invoke-static {p0}, Lcom/android/vendorsettings/display/d;->bf(Landroid/content/Context;)V

    goto :goto_0
.end method
