.class Lmiui/view/VolumeDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumeDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/view/VolumeDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/view/VolumeDialog;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog;)V
    .locals 0

    .prologue
    .line 131
    iput-object p1, p0, Lmiui/view/VolumeDialog$1;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 133
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "android.media.EXTRA_RINGER_MODE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 136
    iget-object v1, p0, Lmiui/view/VolumeDialog$1;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;
    invoke-static {v1}, Lmiui/view/VolumeDialog;->access$100(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v1

    iget-object v2, p0, Lmiui/view/VolumeDialog$1;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mHandler:Lmiui/view/VolumeDialog$H;
    invoke-static {v2}, Lmiui/view/VolumeDialog;->access$100(Lmiui/view/VolumeDialog;)Lmiui/view/VolumeDialog$H;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Lmiui/view/VolumeDialog$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v2, v4, v5}, Lmiui/view/VolumeDialog$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 139
    :cond_0
    return-void
.end method
