.class public Lcom/android/settings/notification/NotificationAccessSettings;
.super Lcom/android/settings/notification/ManagedServiceSettings;
.source "NotificationAccessSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final ajf:Lcom/android/settings/notification/ManagedServiceSettings$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->TAG:Ljava/lang/String;

    .line 29
    invoke-static {}, Lcom/android/settings/notification/NotificationAccessSettings;->sh()Lcom/android/settings/notification/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->ajf:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/android/settings/notification/ManagedServiceSettings;-><init>()V

    return-void
.end method

.method public static bJ(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->ajf:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-static {v0, p0}, Lcom/android/settings/notification/ServiceListing;->a(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/pm/PackageManager;)I
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->ajf:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-static {v0, p0}, Lcom/android/settings/notification/ServiceListing;->a(Lcom/android/settings/notification/ManagedServiceSettings$Config;Landroid/content/pm/PackageManager;)I

    move-result v0

    return v0
.end method

.method private static sh()Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/settings/notification/ManagedServiceSettings$Config;-><init>()V

    .line 33
    sget-object v1, Lcom/android/settings/notification/NotificationAccessSettings;->TAG:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 34
    const-string v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aiP:Ljava/lang/String;

    .line 35
    const-string v1, "android.service.notification.NotificationListenerService"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 36
    const-string v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 37
    const-string v1, "notification listener"

    iput-object v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aiQ:Ljava/lang/String;

    .line 38
    const v1, 0x7f0c0a6f

    iput v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aiR:I

    .line 39
    const v1, 0x7f0c0a70

    iput v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aiS:I

    .line 40
    const v1, 0x7f0c0a6e

    iput v1, v0, Lcom/android/settings/notification/ManagedServiceSettings$Config;->aiT:I

    .line 41
    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/android/settings/notification/NotificationAccessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected sf()Lcom/android/settings/notification/ManagedServiceSettings$Config;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/settings/notification/NotificationAccessSettings;->ajf:Lcom/android/settings/notification/ManagedServiceSettings$Config;

    return-object v0
.end method

.method protected z()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0xb3

    return v0
.end method
