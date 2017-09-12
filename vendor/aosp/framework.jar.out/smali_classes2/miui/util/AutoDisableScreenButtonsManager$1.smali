.class Lmiui/util/AutoDisableScreenButtonsManager$1;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/AutoDisableScreenButtonsManager;->onStatusBarVisibilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/AutoDisableScreenButtonsManager;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lmiui/util/AutoDisableScreenButtonsManager;Z)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    iput-boolean p2, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 67
    const-string v3, "AutoDisableScreenButtonsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "status bar visible change: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->val$visible:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-boolean v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->val$visible:Z

    if-eqz v3, :cond_2

    .line 70
    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # getter for: Lmiui/util/AutoDisableScreenButtonsManager;->mOnSetScreenButtonsStateListener:Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;
    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->access$000(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;

    move-result-object v3

    invoke-interface {v3}, Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;->isDisabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 71
    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # getter for: Lmiui/util/AutoDisableScreenButtonsManager;->mOnSetScreenButtonsStateListener:Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;
    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->access$000(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;

    move-result-object v3

    invoke-interface {v3, v6}, Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;->onSetState(Z)V

    .line 73
    :cond_0
    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # getter for: Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;
    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->access$100(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 74
    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # getter for: Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;
    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->access$100(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->dismiss()V

    .line 89
    :cond_1
    :goto_0
    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    iget-boolean v4, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->val$visible:Z

    # setter for: Lmiui/util/AutoDisableScreenButtonsManager;->mStatusBarVisibleOld:Z
    invoke-static {v3, v4}, Lmiui/util/AutoDisableScreenButtonsManager;->access$502(Lmiui/util/AutoDisableScreenButtonsManager;Z)Z

    .line 90
    return-void

    .line 76
    :cond_2
    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # getter for: Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->access$200(Lmiui/util/AutoDisableScreenButtonsManager;)Landroid/content/Context;

    move-result-object v3

    # invokes: Lmiui/util/AutoDisableScreenButtonsManager;->getRunningTopActivity(Landroid/content/Context;)Landroid/content/ComponentName;
    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->access$300(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 77
    .local v0, "cn":Landroid/content/ComponentName;
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 79
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # getter for: Lmiui/util/AutoDisableScreenButtonsManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->access$200(Lmiui/util/AutoDisableScreenButtonsManager;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lmiui/util/AutoDisableScreenButtonsHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 80
    .local v1, "flag":I
    const-string v3, "AutoDisableScreenButtonsManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get top activity package flag: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    .line 82
    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # getter for: Lmiui/util/AutoDisableScreenButtonsManager;->mOnSetScreenButtonsStateListener:Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;
    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->access$000(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;->onSetState(Z)V

    goto :goto_0

    .line 84
    :cond_3
    if-ne v1, v6, :cond_1

    .line 85
    iget-object v3, p0, Lmiui/util/AutoDisableScreenButtonsManager$1;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # invokes: Lmiui/util/AutoDisableScreenButtonsManager;->showFloat()V
    invoke-static {v3}, Lmiui/util/AutoDisableScreenButtonsManager;->access$400(Lmiui/util/AutoDisableScreenButtonsManager;)V

    goto :goto_0
.end method
