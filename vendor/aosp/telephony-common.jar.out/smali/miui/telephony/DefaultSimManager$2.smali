.class Lmiui/telephony/DefaultSimManager$2;
.super Ljava/lang/Thread;
.source "DefaultSimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/DefaultSimManager;->onInitDefaultSlot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/DefaultSimManager;

.field final synthetic val$dataSlot:I


# direct methods
.method constructor <init>(Lmiui/telephony/DefaultSimManager;I)V
    .locals 0

    .prologue
    .line 401
    iput-object p1, p0, Lmiui/telephony/DefaultSimManager$2;->this$0:Lmiui/telephony/DefaultSimManager;

    iput p2, p0, Lmiui/telephony/DefaultSimManager$2;->val$dataSlot:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 404
    # getter for: Lmiui/telephony/DefaultSimManager;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Lmiui/telephony/DefaultSimManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "single sim card,and the card is deactivated,so activate this card,data slot = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/telephony/DefaultSimManager$2;->val$dataSlot:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget v0, p0, Lmiui/telephony/DefaultSimManager$2;->val$dataSlot:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccCardActivateHelper;->setIccCardActivate(IZ)V

    .line 406
    return-void
.end method
