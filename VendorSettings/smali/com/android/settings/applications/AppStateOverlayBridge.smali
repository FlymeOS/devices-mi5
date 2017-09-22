.class public Lcom/android/vendorsettings/applications/AppStateOverlayBridge;
.super Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;
.source "AppStateOverlayBridge.java"


# static fields
.field private static final GC:[Ljava/lang/String;

.field public static final GD:Lcom/android/b/a/p;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vendorsettings/applications/AppStateOverlayBridge;->GC:[Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/android/vendorsettings/applications/AppStateOverlayBridge$1;

    invoke-direct {v0}, Lcom/android/vendorsettings/applications/AppStateOverlayBridge$1;-><init>()V

    sput-object v0, Lcom/android/vendorsettings/applications/AppStateOverlayBridge;->GD:Lcom/android/b/a/p;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/b/a/a;Lcom/android/vendorsettings/applications/AppStateBaseBridge$Callback;)V
    .locals 6

    .prologue
    .line 42
    const/16 v4, 0x18

    sget-object v5, Lcom/android/vendorsettings/applications/AppStateOverlayBridge;->GC:[Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;-><init>(Landroid/content/Context;Lcom/android/b/a/a;Lcom/android/vendorsettings/applications/AppStateBaseBridge$Callback;I[Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method protected a(Lcom/android/b/a/o;Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p2, p3}, Lcom/android/vendorsettings/applications/AppStateOverlayBridge;->i(Ljava/lang/String;I)Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    .line 48
    return-void
.end method

.method public i(Ljava/lang/String;I)Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;
    .locals 2

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->g(Ljava/lang/String;I)Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;

    invoke-direct {v1, v0}, Lcom/android/vendorsettings/applications/AppStateOverlayBridge$OverlayState;-><init>(Lcom/android/vendorsettings/applications/AppStateAppOpsBridge$PermissionState;)V

    return-object v1
.end method

.method public jS()I
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->jO()I

    move-result v0

    return v0
.end method

.method public jT()I
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/android/vendorsettings/applications/AppStateAppOpsBridge;->jP()I

    move-result v0

    return v0
.end method
