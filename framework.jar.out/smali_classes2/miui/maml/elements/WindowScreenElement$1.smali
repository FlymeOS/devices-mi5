.class Lmiui/maml/elements/WindowScreenElement$1;
.super Ljava/lang/Object;
.source "WindowScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/WindowScreenElement;->onVisibilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/WindowScreenElement;

.field final synthetic val$_v:Z


# direct methods
.method constructor <init>(Lmiui/maml/elements/WindowScreenElement;Z)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lmiui/maml/elements/WindowScreenElement$1;->this$0:Lmiui/maml/elements/WindowScreenElement;

    iput-boolean p2, p0, Lmiui/maml/elements/WindowScreenElement$1;->val$_v:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lmiui/maml/elements/WindowScreenElement$1;->val$_v:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$1;->this$0:Lmiui/maml/elements/WindowScreenElement;

    # invokes: Lmiui/maml/elements/WindowScreenElement;->addView()V
    invoke-static {v0}, Lmiui/maml/elements/WindowScreenElement;->access$000(Lmiui/maml/elements/WindowScreenElement;)V

    .line 59
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/WindowScreenElement$1;->this$0:Lmiui/maml/elements/WindowScreenElement;

    # invokes: Lmiui/maml/elements/WindowScreenElement;->removeView()V
    invoke-static {v0}, Lmiui/maml/elements/WindowScreenElement;->access$100(Lmiui/maml/elements/WindowScreenElement;)V

    goto :goto_0
.end method
