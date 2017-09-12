.class Lmiui/view/VolumeDialog$3;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog;->setExpandedH(Z)V
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
    .line 437
    iput-object p1, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 440
    iget-object v0, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    const/4 v1, 0x0

    # setter for: Lmiui/view/VolumeDialog;->mExpandAnimating:Z
    invoke-static {v0, v1}, Lmiui/view/VolumeDialog;->access$1302(Lmiui/view/VolumeDialog;Z)Z

    .line 441
    iget-object v0, p0, Lmiui/view/VolumeDialog$3;->this$0:Lmiui/view/VolumeDialog;

    # invokes: Lmiui/view/VolumeDialog;->updateExpandButtonH()V
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$1400(Lmiui/view/VolumeDialog;)V

    .line 442
    return-void
.end method
