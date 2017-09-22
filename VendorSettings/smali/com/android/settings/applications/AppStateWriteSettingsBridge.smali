.class public Lcom/android/settings/applications/AppStateWriteSettingsBridge;
.super Lcom/android/settings/applications/AppStateAppOpsBridge;
.source "AppStateWriteSettingsBridge.java"


# static fields
.field private static final GH:[Ljava/lang/String;

.field public static final GI:Lcom/android/b/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.WRITE_SETTINGS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->GH:[Ljava/lang/String;

    .line 79
    new-instance v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->GI:Lcom/android/b/a/p;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/b/a/a;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 6

    .prologue
    .line 46
    const/16 v4, 0x17

    sget-object v5, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->GH:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/b/a/a;Lcom/android/settings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V

    .line 47
    return-void
.end method


# virtual methods
.method protected a(Lcom/android/b/a/o;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;->k(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    .line 52
    return-void
.end method

.method public jS()I
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lcom/android/settings/applications/AppStateAppOpsBridge;->jO()I

    move-result v0

    return v0
.end method

.method public jU()I
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Lcom/android/settings/applications/AppStateAppOpsBridge;->jP()I

    move-result v0

    return v0
.end method

.method public k(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1, p2}, Lcom/android/settings/applications/AppStateAppOpsBridge;->g(Ljava/lang/String;I)Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    .line 56
    new-instance v1, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;

    invoke-direct {v1, v0}, Lcom/android/settings/applications/AppStateWriteSettingsBridge$WriteSettingsState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    return-object v1
.end method
