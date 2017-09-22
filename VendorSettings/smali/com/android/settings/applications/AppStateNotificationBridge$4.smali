.class final Lcom/android/vendorsettings/applications/AppStateNotificationBridge$4;
.super Ljava/lang/Object;
.source "AppStateNotificationBridge.java"

# interfaces
.implements Lcom/android/b/a/p;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/b/a/o;)Z
    .locals 1

    .prologue
    .line 99
    iget-object v0, p1, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/b/a/o;->aIP:Ljava/lang/Object;

    check-cast v0, Lcom/android/vendorsettings/notification/NotificationBackend$AppRow;

    iget-boolean v0, v0, Lcom/android/vendorsettings/notification/NotificationBackend$AppRow;->ajj:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public init()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method
