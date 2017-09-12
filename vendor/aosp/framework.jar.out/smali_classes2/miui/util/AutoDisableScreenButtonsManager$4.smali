.class Lmiui/util/AutoDisableScreenButtonsManager$4;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsManager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 169
    iput-object p1, p0, Lmiui/util/AutoDisableScreenButtonsManager$4;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$4;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # getter for: Lmiui/util/AutoDisableScreenButtonsManager;->mFloatView:Lmiui/view/AutoDisableScreenbuttonsFloatView;
    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->access$100(Lmiui/util/AutoDisableScreenButtonsManager;)Lmiui/view/AutoDisableScreenbuttonsFloatView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/view/AutoDisableScreenbuttonsFloatView;->dismiss()V

    .line 172
    iget-object v0, p0, Lmiui/util/AutoDisableScreenButtonsManager$4;->this$0:Lmiui/util/AutoDisableScreenButtonsManager;

    # invokes: Lmiui/util/AutoDisableScreenButtonsManager;->showSettings()V
    invoke-static {v0}, Lmiui/util/AutoDisableScreenButtonsManager;->access$800(Lmiui/util/AutoDisableScreenButtonsManager;)V

    .line 173
    const/4 v0, 0x1

    return v0
.end method
