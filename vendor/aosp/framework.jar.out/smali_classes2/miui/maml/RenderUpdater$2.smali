.class Lmiui/maml/RenderUpdater$2;
.super Ljava/lang/Object;
.source "RenderUpdater.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/RenderUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/RenderUpdater;


# direct methods
.method constructor <init>(Lmiui/maml/RenderUpdater;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lmiui/maml/RenderUpdater$2;->this$0:Lmiui/maml/RenderUpdater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lmiui/maml/RenderUpdater$2;->this$0:Lmiui/maml/RenderUpdater;

    # invokes: Lmiui/maml/RenderUpdater;->doRunUpdater()V
    invoke-static {v0}, Lmiui/maml/RenderUpdater;->access$500(Lmiui/maml/RenderUpdater;)V

    .line 66
    iget-object v0, p0, Lmiui/maml/RenderUpdater$2;->this$0:Lmiui/maml/RenderUpdater;

    const/4 v1, 0x1

    # setter for: Lmiui/maml/RenderUpdater;->mStarted:Z
    invoke-static {v0, v1}, Lmiui/maml/RenderUpdater;->access$602(Lmiui/maml/RenderUpdater;Z)Z

    .line 67
    return-void
.end method
