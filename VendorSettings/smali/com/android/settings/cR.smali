.class Lcom/android/vendorsettings/cR;
.super Ljava/lang/Object;
.source "EdgeModeGuideActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic mv:Lcom/android/vendorsettings/EdgeModeGuideActivity;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/EdgeModeGuideActivity;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/vendorsettings/cR;->mv:Lcom/android/vendorsettings/EdgeModeGuideActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/vendorsettings/cR;->mv:Lcom/android/vendorsettings/EdgeModeGuideActivity;

    invoke-static {v0}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->b(Lcom/android/vendorsettings/EdgeModeGuideActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/cR;->mv:Lcom/android/vendorsettings/EdgeModeGuideActivity;

    invoke-static {v1}, Lcom/android/vendorsettings/EdgeModeGuideActivity;->b(Lcom/android/vendorsettings/EdgeModeGuideActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 162
    return-void
.end method
