.class Lmiui/telephony/dtmf/DTMFTaskManager$1;
.super Ljava/lang/Object;
.source "DTMFTaskManager.java"

# interfaces
.implements Lmiui/telephony/dtmf/DTMFTaskManager$DTMFRecognizeThread$DTMFRecognizeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/telephony/dtmf/DTMFTaskManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/dtmf/DTMFTaskManager;


# direct methods
.method constructor <init>(Lmiui/telephony/dtmf/DTMFTaskManager;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lmiui/telephony/dtmf/DTMFTaskManager$1;->this$0:Lmiui/telephony/dtmf/DTMFTaskManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDTMFRecognized(Z)V
    .locals 1
    .param p1, "result"    # Z

    .prologue
    .line 94
    iget-object v0, p0, Lmiui/telephony/dtmf/DTMFTaskManager$1;->this$0:Lmiui/telephony/dtmf/DTMFTaskManager;

    # invokes: Lmiui/telephony/dtmf/DTMFTaskManager;->onDTMFRecognizedFinished(Z)V
    invoke-static {v0, p1}, Lmiui/telephony/dtmf/DTMFTaskManager;->access$000(Lmiui/telephony/dtmf/DTMFTaskManager;Z)V

    .line 95
    return-void
.end method
