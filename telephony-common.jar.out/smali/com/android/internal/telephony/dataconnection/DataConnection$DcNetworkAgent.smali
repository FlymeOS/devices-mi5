.class Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;
.super Landroid/net/NetworkAgent;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DataConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DcNetworkAgent"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DataConnection;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V
    .locals 9
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "ni"    # Landroid/net/NetworkInfo;
    .param p6, "nc"    # Landroid/net/NetworkCapabilities;
    .param p7, "lp"    # Landroid/net/LinkProperties;
    .param p8, "score"    # I
    .param p9, "misc"    # Landroid/net/NetworkMisc;

    .prologue
    .line 2121
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    .line 2122
    invoke-direct/range {v0 .. v8}, Landroid/net/NetworkAgent;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkInfo;Landroid/net/NetworkCapabilities;Landroid/net/LinkProperties;ILandroid/net/NetworkMisc;)V

    .line 2123
    return-void
.end method


# virtual methods
.method protected pollLceData()V
    .locals 3

    .prologue
    .line 2148
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getLceStatus()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 2149
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v0, v0, Lcom/android/internal/telephony/dataconnection/DataConnection;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v2, 0x4000e

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->pullLceData(Landroid/os/Message;)V

    .line 2151
    :cond_0
    return-void
.end method

.method protected unwanted()V
    .locals 9

    .prologue
    .line 2127
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v6}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v6

    if-eq v6, p0, :cond_1

    .line 2128
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DcNetworkAgent: unwanted found mNetworkAgent="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    # getter for: Lcom/android/internal/telephony/dataconnection/DataConnection;->mNetworkAgent:Landroid/net/NetworkAgent;
    invoke-static {v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->access$1100(Lcom/android/internal/telephony/dataconnection/DataConnection;)Landroid/net/NetworkAgent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", which isn\'t me.  Aborting unwanted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->log(Ljava/lang/String;)V

    .line 2144
    :cond_0
    return-void

    .line 2133
    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    .line 2134
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DataConnection;->mApnContexts:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;

    .line 2135
    .local v1, "cp":Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;
    iget-object v0, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mApnContext:Lcom/android/internal/telephony/dataconnection/ApnContext;

    .line 2136
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    new-instance v5, Landroid/util/Pair;

    iget v6, v1, Lcom/android/internal/telephony/dataconnection/DataConnection$ConnectionParams;->mConnectionGeneration:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v5, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2138
    .local v5, "pair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/Integer;>;"
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DcNetworkAgent: [unwanted]: disconnect apnContext="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->log(Ljava/lang/String;)V

    .line 2139
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v6, v6, Lcom/android/internal/telephony/dataconnection/DataConnection;->mDct:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    const v7, 0x4200f

    invoke-virtual {v6, v7, v5}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2140
    .local v4, "msg":Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v0, v6, v4}, Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/dataconnection/ApnContext;Ljava/lang/String;Landroid/os/Message;)V

    .line 2141
    .local v2, "dp":Lcom/android/internal/telephony/dataconnection/DataConnection$DisconnectParams;
    iget-object v6, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    iget-object v7, p0, Lcom/android/internal/telephony/dataconnection/DataConnection$DcNetworkAgent;->this$0:Lcom/android/internal/telephony/dataconnection/DataConnection;

    const v8, 0x40004

    invoke-virtual {v7, v8, v2}, Lcom/android/internal/telephony/dataconnection/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/dataconnection/DataConnection;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method
