.class Lcom/android/settings/cP;
.super Landroid/os/Handler;
.source "EdgeModeGuideActivity.java"


# instance fields
.field final synthetic mv:Lcom/android/settings/EdgeModeGuideActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/EdgeModeGuideActivity;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/settings/cP;->mv:Lcom/android/settings/EdgeModeGuideActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/android/settings/cP;->mv:Lcom/android/settings/EdgeModeGuideActivity;

    invoke-static {v0}, Lcom/android/settings/EdgeModeGuideActivity;->a(Lcom/android/settings/EdgeModeGuideActivity;)Landroid/widget/VideoView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 58
    :cond_0
    return-void
.end method
