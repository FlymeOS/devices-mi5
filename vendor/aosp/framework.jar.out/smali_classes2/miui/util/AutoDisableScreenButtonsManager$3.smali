.class Lmiui/util/AutoDisableScreenButtonsManager$3;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/AutoDisableScreenButtonsManager;->showFloat()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/util/AutoDisableScreenButtonsManager;


# direct methods
.method constructor <init>(Lmiui/util/AutoDisableScreenButtonsManager;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lmiui/util/AutoDisableScreenButtonsManager$3;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 162
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$3;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # getter for: Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;
    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->access$100(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->dismiss()V

    .line 163
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$3;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # getter for: Lmiui/util/AutoDisableScreenButtonsManager;->mOnSetScreenButtonsStateListener:Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;
    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->access$000(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmiui/util/AutoDisableScreenButtonsManager$OnSetScreenButtonsStateListener;->onSetState(Z)V

    .line 164
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$3;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # invokes: Lmiui/util/AutoDisableScreenButtonsManager;->showPromptsIfNeeds()Z
    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->access$700(Lmiui/util/AutoDisableScreenButtonsManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 167
    :cond_0
    return-void
.end method
