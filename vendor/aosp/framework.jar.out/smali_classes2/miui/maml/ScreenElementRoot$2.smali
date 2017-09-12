.class Lmiui/maml/ScreenElementRoot$2;
.super Ljava/lang/Object;
.source "ScreenElementRoot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/ScreenElementRoot;

.field final synthetic val$command:Ljava/lang/String;


# direct methods
.method constructor <init>(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1163
    iput-object p1, p0, Lmiui/maml/ScreenElementRoot$2;->this$0:Lmiui/maml/ScreenElementRoot;

    iput-object p2, p0, Lmiui/maml/ScreenElementRoot$2;->val$command:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1167
    :try_start_0
    iget-object v1, p0, Lmiui/maml/ScreenElementRoot$2;->this$0:Lmiui/maml/ScreenElementRoot;

    # getter for: Lmiui/maml/ScreenElementRoot;->mExternalCommandManager:Lmiui/maml/CommandTriggers;
    invoke-static {v1}, Lmiui/maml/ScreenElementRoot;->access$200(Lmiui/maml/ScreenElementRoot;)Lmiui/maml/CommandTriggers;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/ScreenElementRoot$2;->val$command:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmiui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    :goto_0
    return-void

    .line 1168
    :catch_0
    move-exception v0

    .line 1169
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ScreenElementRoot"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
