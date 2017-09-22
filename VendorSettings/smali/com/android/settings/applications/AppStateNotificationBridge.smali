.class public Lcom/android/settings/applications/AppStateNotificationBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateNotificationBridge.java"


# static fields
.field public static final GA:Lcom/android/b/a/p;

.field public static final GB:Lcom/android/b/a/p;

.field public static final Gy:Lcom/android/b/a/p;

.field public static final Gz:Lcom/android/b/a/p;


# instance fields
.field private final Gx:Lcom/android/settings/notification/NotificationBackend;

.field private final i:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->Gy:Lcom/android/b/a/p;

    .line 70
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$2;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->Gz:Lcom/android/b/a/p;

    .line 81
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$3;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->GA:Lcom/android/b/a/p;

    .line 92
    new-instance v0, Lcom/android/settings/applications/AppStateNotificationBridge$4;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateNotificationBridge$4;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->GB:Lcom/android/b/a/p;

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;Lcom/android/b/a/a;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Lcom/android/settings/notification/NotificationBackend;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/b/a/a;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    .line 40
    iput-object p1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->i:Landroid/content/pm/PackageManager;

    .line 41
    iput-object p4, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->Gx:Lcom/android/settings/notification/NotificationBackend;

    .line 42
    return-void
.end method


# virtual methods
.method protected a(Lcom/android/b/a/o;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->Gx:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    iput-object v0, p1, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    .line 57
    return-void
.end method

.method protected jM()V
    .locals 7

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->Gs:Lcom/android/b/a/w;

    invoke-virtual {v0}, Lcom/android/b/a/w;->zo()Ljava/util/ArrayList;

    move-result-object v2

    .line 47
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 48
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 49
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/b/a/o;

    .line 50
    iget-object v4, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->Gx:Lcom/android/settings/notification/NotificationBackend;

    iget-object v5, p0, Lcom/android/settings/applications/AppStateNotificationBridge;->i:Landroid/content/pm/PackageManager;

    iget-object v6, v0, Lcom/android/b/a/o;->bp:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4, v5, v6}, Lcom/android/settings/notification/NotificationBackend;->a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v4

    iput-object v4, v0, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    .line 48
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method
