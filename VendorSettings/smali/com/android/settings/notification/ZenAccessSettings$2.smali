.class final Lcom/android/settings/notification/ZenAccessSettings$2;
.super Ljava/lang/Object;
.source "ZenAccessSettings.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic akC:Z

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/settings/notification/ZenAccessSettings$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/notification/ZenAccessSettings$2;->val$pkg:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/settings/notification/ZenAccessSettings$2;->akC:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings/notification/ZenAccessSettings$2;->val$context:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 163
    iget-object v1, p0, Lcom/android/settings/notification/ZenAccessSettings$2;->val$pkg:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/settings/notification/ZenAccessSettings$2;->akC:Z

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V

    .line 164
    return-void
.end method
