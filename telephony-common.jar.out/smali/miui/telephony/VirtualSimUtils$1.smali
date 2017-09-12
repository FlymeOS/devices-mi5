.class Lmiui/telephony/VirtualSimUtils$1;
.super Landroid/database/ContentObserver;
.source "VirtualSimUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/telephony/VirtualSimUtils;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/telephony/VirtualSimUtils;


# direct methods
.method constructor <init>(Lmiui/telephony/VirtualSimUtils;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 41
    iput-object p1, p0, Lmiui/telephony/VirtualSimUtils$1;->this$0:Lmiui/telephony/VirtualSimUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 44
    iget-object v2, p0, Lmiui/telephony/VirtualSimUtils$1;->this$0:Lmiui/telephony/VirtualSimUtils;

    sget-object v3, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    move-result v3

    # setter for: Lmiui/telephony/VirtualSimUtils;->mIsVirtualSimEnabled:Z
    invoke-static {v2, v3}, Lmiui/telephony/VirtualSimUtils;->access$002(Lmiui/telephony/VirtualSimUtils;Z)Z

    .line 45
    iget-object v2, p0, Lmiui/telephony/VirtualSimUtils$1;->this$0:Lmiui/telephony/VirtualSimUtils;

    sget-object v3, Lmiui/telephony/MiuiTelephony;->sContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimStatus(Landroid/content/Context;)I

    move-result v3

    # setter for: Lmiui/telephony/VirtualSimUtils;->mVirtualSimStatus:I
    invoke-static {v2, v3}, Lmiui/telephony/VirtualSimUtils;->access$102(Lmiui/telephony/VirtualSimUtils;I)I

    .line 46
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "virtual_sim_imsi"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const-string v2, "VirtualSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVirtualSimStateChanged mIsVirtualSimEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/telephony/VirtualSimUtils$1;->this$0:Lmiui/telephony/VirtualSimUtils;

    # getter for: Lmiui/telephony/VirtualSimUtils;->mIsVirtualSimEnabled:Z
    invoke-static {v4}, Lmiui/telephony/VirtualSimUtils;->access$000(Lmiui/telephony/VirtualSimUtils;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v2, p0, Lmiui/telephony/VirtualSimUtils$1;->this$0:Lmiui/telephony/VirtualSimUtils;

    # getter for: Lmiui/telephony/VirtualSimUtils;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/telephony/VirtualSimUtils;->access$200(Lmiui/telephony/VirtualSimUtils;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;

    .line 49
    .local v1, "listener":Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;
    invoke-interface {v1}, Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;->onVirtualSimStateChanged()V

    goto :goto_0

    .line 51
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "virtual_sim_status"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 52
    const-string v2, "VirtualSimUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onVirtualSimPreciseStateChanged mVirtualSimStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmiui/telephony/VirtualSimUtils$1;->this$0:Lmiui/telephony/VirtualSimUtils;

    # getter for: Lmiui/telephony/VirtualSimUtils;->mVirtualSimStatus:I
    invoke-static {v4}, Lmiui/telephony/VirtualSimUtils;->access$100(Lmiui/telephony/VirtualSimUtils;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v2, p0, Lmiui/telephony/VirtualSimUtils$1;->this$0:Lmiui/telephony/VirtualSimUtils;

    # getter for: Lmiui/telephony/VirtualSimUtils;->mListeners:Ljava/util/ArrayList;
    invoke-static {v2}, Lmiui/telephony/VirtualSimUtils;->access$200(Lmiui/telephony/VirtualSimUtils;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;

    .line 54
    .restart local v1    # "listener":Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;
    invoke-interface {v1}, Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;->onVirtualSimPreciseStateChanged()V

    goto :goto_1

    .line 57
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "listener":Lmiui/telephony/VirtualSimUtils$VirtualSimListenner;
    :cond_1
    return-void
.end method
