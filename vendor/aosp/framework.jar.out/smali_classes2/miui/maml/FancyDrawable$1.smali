.class Lmiui/maml/FancyDrawable$1;
.super Ljava/lang/Object;
.source "FancyDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/FancyDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/FancyDrawable;


# direct methods
.method constructor <init>(Lmiui/maml/FancyDrawable;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lmiui/maml/FancyDrawable$1;->this$0:Lmiui/maml/FancyDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lmiui/maml/FancyDrawable$1;->this$0:Lmiui/maml/FancyDrawable;

    const/4 v1, 0x1

    # setter for: Lmiui/maml/FancyDrawable;->mTimeOut:Z
    invoke-static {v0, v1}, Lmiui/maml/FancyDrawable;->access$002(Lmiui/maml/FancyDrawable;Z)Z

    .line 29
    iget-object v0, p0, Lmiui/maml/FancyDrawable$1;->this$0:Lmiui/maml/FancyDrawable;

    # invokes: Lmiui/maml/FancyDrawable;->doPause()V
    invoke-static {v0}, Lmiui/maml/FancyDrawable;->access$100(Lmiui/maml/FancyDrawable;)V

    .line 30
    return-void
.end method
