.class Lmiui/view/VolumeDialog$SafetyWarningDialog$2;
.super Ljava/lang/Object;
.source "VolumeDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/view/VolumeDialog$SafetyWarningDialog;-><init>(Lmiui/view/VolumeDialog;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/view/VolumeDialog$SafetyWarningDialog;

.field final synthetic val$this$0:Lmiui/view/VolumeDialog;


# direct methods
.method constructor <init>(Lmiui/view/VolumeDialog$SafetyWarningDialog;Lmiui/view/VolumeDialog;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lmiui/view/VolumeDialog$SafetyWarningDialog$2;->this$1:Lmiui/view/VolumeDialog$SafetyWarningDialog;

    iput-object p2, p0, Lmiui/view/VolumeDialog$SafetyWarningDialog$2;->val$this$0:Lmiui/view/VolumeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 819
    iget-object v0, p0, Lmiui/view/VolumeDialog$SafetyWarningDialog$2;->this$1:Lmiui/view/VolumeDialog$SafetyWarningDialog;

    iget-object v0, v0, Lmiui/view/VolumeDialog$SafetyWarningDialog;->this$0:Lmiui/view/VolumeDialog;

    # getter for: Lmiui/view/VolumeDialog;->mSafetyWarningLock:Ljava/lang/Object;
    invoke-static {v0}, Lmiui/view/VolumeDialog;->access$2500(Lmiui/view/VolumeDialog;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 820
    :try_start_0
    iget-object v0, p0, Lmiui/view/VolumeDialog$SafetyWarningDialog$2;->this$1:Lmiui/view/VolumeDialog$SafetyWarningDialog;

    iget-object v0, v0, Lmiui/view/VolumeDialog$SafetyWarningDialog;->this$0:Lmiui/view/VolumeDialog;

    const/4 v2, 0x0

    # setter for: Lmiui/view/VolumeDialog;->mSafetyWarning:Landroid/app/AlertDialog;
    invoke-static {v0, v2}, Lmiui/view/VolumeDialog;->access$2602(Lmiui/view/VolumeDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 821
    monitor-exit v1

    .line 822
    return-void

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
