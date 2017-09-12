.class Lmiui/view/VolumeDialog$5;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 631
    iput-object p1, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 634
    iget-object v0, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mExpandAnimating:Z
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$1300(Lmiui/view/VolumeDialog;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v1, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    iget-object v0, p0, Lmiui/view/VolumeDialog$5;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mExpanded:Z
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$2700(Lmiui/view/VolumeDialog;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    # invokes: Lmiui/view/VolumeDialog;->setExpandedH(Z)V
    invoke-static {v1, v0}, Lmiui/view/VolumeDialog;->access$2800(Lmiui/view/VolumeDialog;Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
