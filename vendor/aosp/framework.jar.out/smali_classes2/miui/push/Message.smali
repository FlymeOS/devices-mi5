.class public Lmiui/push/Message;
.super Lmiui/push/Packet;
.source "Message.java"


# static fields
.field public static final MSG_TYPE_CHAT:Ljava/lang/String; = "chat"

.field public static final MSG_TYPE_ERROR:Ljava/lang/String; = "error"

.field public static final MSG_TYPE_GROUPCHAT:Ljava/lang/String; = "groupchat"

.field public static final MSG_TYPE_HEADLINE:Ljava/lang/String; = "hearline"

.field public static final MSG_TYPE_NORMAL:Ljava/lang/String; = "normal"

.field public static final MSG_TYPE_PPL:Ljava/lang/String; = "ppl"


# instance fields
.field private fseq:Ljava/lang/String;

.field private language:Ljava/lang/String;

.field private mAppId:Ljava/lang/String;

.field private mBody:Ljava/lang/String;

.field private mBodyEncoding:Ljava/lang/String;

.field private mEncrypted:Z

.field private mSubject:Ljava/lang/String;

.field private mTransient:Z

.field private mseq:Ljava/lang/String;

.field private seq:Ljava/lang/String;

.field private status:Ljava/lang/String;

.field private thread:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 126
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 102
    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 121
    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 150
    invoke-direct {p0, p1}, Lmiui/push/Packet;-><init>(Landroid/os/Bundle;)V

    .line 102
    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 121
    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 151
    const-string v0, "ext_msg_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 152
    const-string v0, "ext_msg_lang"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    .line 153
    const-string v0, "ext_msg_thread"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 154
    const-string v0, "ext_msg_sub"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    .line 155
    const-string v0, "ext_msg_body"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    .line 156
    const-string v0, "ext_body_encode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    .line 157
    const-string v0, "ext_msg_appid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    .line 158
    const-string v0, "ext_msg_trans"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/push/Message;->mTransient:Z

    .line 159
    const-string v0, "ext_msg_seq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 160
    const-string v0, "ext_msg_mseq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 161
    const-string v0, "ext_msg_fseq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 162
    const-string v0, "ext_msg_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 102
    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 121
    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 135
    invoke-virtual {p0, p1}, Lmiui/push/Message;->setTo(Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "to"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Lmiui/push/Packet;-><init>()V

    .line 102
    iput-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 109
    iput-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    .line 113
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 115
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 117
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 119
    const-string v0, ""

    iput-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 121
    iput-boolean v1, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 145
    invoke-virtual {p0, p1}, Lmiui/push/Message;->setTo(Ljava/lang/String;)V

    .line 146
    iput-object p2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 147
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 447
    if-ne p0, p1, :cond_1

    move v2, v1

    .line 469
    :cond_0
    :goto_0
    return v2

    .line 449
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    move-object v0, p1

    .line 452
    check-cast v0, Lmiui/push/Message;

    .line 454
    .local v0, "message":Lmiui/push/Message;
    invoke-super {p0, v0}, Lmiui/push/Packet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 457
    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 460
    :cond_2
    iget-object v3, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 463
    :cond_3
    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    :cond_4
    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v3, :cond_9

    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 469
    :cond_5
    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    iget-object v4, v0, Lmiui/push/Message;->type:Ljava/lang/String;

    if-ne v3, v4, :cond_a

    :goto_1
    move v2, v1

    goto :goto_0

    .line 457
    :cond_6
    iget-object v3, v0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_0

    .line 460
    :cond_7
    iget-object v3, v0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v3, :cond_3

    goto :goto_0

    .line 463
    :cond_8
    iget-object v3, v0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_4

    goto :goto_0

    .line 466
    :cond_9
    iget-object v3, v0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v3, :cond_5

    goto :goto_0

    :cond_a
    move v1, v2

    .line 469
    goto :goto_1
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getBodyEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncrypted()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Lmiui/push/Message;->mEncrypted:Z

    return v0
.end method

.method public getFSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getMSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getThread()Ljava/lang/String;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 475
    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 476
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 477
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_2
    add-int v0, v3, v2

    .line 478
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_3
    add-int v0, v3, v2

    .line 479
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 480
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 475
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 476
    goto :goto_1

    :cond_3
    move v2, v1

    .line 477
    goto :goto_2

    :cond_4
    move v2, v1

    .line 478
    goto :goto_3
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0
    .param p1, "appId"    # Ljava/lang/String;

    .prologue
    .line 184
    iput-object p1, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    .line 185
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 283
    iput-object p1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    .line 284
    return-void
.end method

.method public setBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    .line 287
    iput-object p1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    .line 288
    iput-object p2, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0
    .param p1, "encrypted"    # Z

    .prologue
    .line 230
    iput-boolean p1, p0, Lmiui/push/Message;->mEncrypted:Z

    .line 231
    return-void
.end method

.method public setFSeq(Ljava/lang/String;)V
    .locals 0
    .param p1, "fseq"    # Ljava/lang/String;

    .prologue
    .line 208
    iput-object p1, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public setIsTransient(Z)V
    .locals 0
    .param p1, "isTransient"    # Z

    .prologue
    .line 176
    iput-boolean p1, p0, Lmiui/push/Message;->mTransient:Z

    .line 177
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    .line 328
    return-void
.end method

.method public setMSeq(Ljava/lang/String;)V
    .locals 0
    .param p1, "mseq"    # Ljava/lang/String;

    .prologue
    .line 200
    iput-object p1, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    .line 201
    return-void
.end method

.method public setSeq(Ljava/lang/String;)V
    .locals 0
    .param p1, "seq"    # Ljava/lang/String;

    .prologue
    .line 192
    iput-object p1, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    .line 193
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # Ljava/lang/String;

    .prologue
    .line 216
    iput-object p1, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    .line 217
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0
    .param p1, "subject"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public setThread(Ljava/lang/String;)V
    .locals 0
    .param p1, "thread"    # Ljava/lang/String;

    .prologue
    .line 307
    iput-object p1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    .line 308
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 332
    invoke-super {p0}, Lmiui/push/Packet;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 333
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v1, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    const-string v1, "ext_msg_type"

    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_0
    iget-object v1, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 337
    const-string v1, "ext_msg_lang"

    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_1
    iget-object v1, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 340
    const-string v1, "ext_msg_sub"

    iget-object v2, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :cond_2
    iget-object v1, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 343
    const-string v1, "ext_msg_body"

    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    :cond_3
    iget-object v1, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 346
    const-string v1, "ext_body_encode"

    iget-object v2, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :cond_4
    iget-object v1, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 349
    const-string v1, "ext_msg_thread"

    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_5
    iget-object v1, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 352
    const-string v1, "ext_msg_appid"

    iget-object v2, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :cond_6
    iget-boolean v1, p0, Lmiui/push/Message;->mTransient:Z

    if-eqz v1, :cond_7

    .line 355
    const-string v1, "ext_msg_trans"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 357
    :cond_7
    iget-object v1, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 358
    const-string v1, "ext_msg_seq"

    iget-object v2, p0, Lmiui/push/Message;->seq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    :cond_8
    iget-object v1, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 361
    const-string v1, "ext_msg_mseq"

    iget-object v2, p0, Lmiui/push/Message;->mseq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_9
    iget-object v1, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 364
    const-string v1, "ext_msg_fseq"

    iget-object v2, p0, Lmiui/push/Message;->fseq:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_a
    iget-object v1, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 367
    const-string v1, "ext_msg_status"

    iget-object v2, p0, Lmiui/push/Message;->status:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_b
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 4

    .prologue
    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 374
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v2, "<message"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {p0}, Lmiui/push/Message;->getXmlns()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 376
    const-string v2, " xmlns=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getXmlns()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    :cond_0
    iget-object v2, p0, Lmiui/push/Message;->language:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 379
    const-string v2, " xml:lang=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_1
    invoke-virtual {p0}, Lmiui/push/Message;->getPacketID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 382
    const-string v2, " id=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getPacketID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    :cond_2
    invoke-virtual {p0}, Lmiui/push/Message;->getTo()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 385
    const-string v2, " to=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getTo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    :cond_3
    invoke-virtual {p0}, Lmiui/push/Message;->getSeq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 388
    const-string v2, " seq=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_4
    invoke-virtual {p0}, Lmiui/push/Message;->getMSeq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 391
    const-string v2, " mseq=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getMSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_5
    invoke-virtual {p0}, Lmiui/push/Message;->getFSeq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 394
    const-string v2, " fseq=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getFSeq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    :cond_6
    invoke-virtual {p0}, Lmiui/push/Message;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 397
    const-string v2, " status=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    :cond_7
    invoke-virtual {p0}, Lmiui/push/Message;->getFrom()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 400
    const-string v2, " from=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getFrom()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_8
    invoke-virtual {p0}, Lmiui/push/Message;->getChannelId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 403
    const-string v2, " chid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getChannelId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    :cond_9
    iget-boolean v2, p0, Lmiui/push/Message;->mTransient:Z

    if-eqz v2, :cond_a

    .line 406
    const-string v2, " transient=\"true\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_a
    iget-object v2, p0, Lmiui/push/Message;->mAppId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 409
    const-string v2, " appid=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lmiui/push/Message;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_b
    iget-object v2, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    .line 412
    const-string v2, " type=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 414
    :cond_c
    iget-boolean v2, p0, Lmiui/push/Message;->mEncrypted:Z

    if-eqz v2, :cond_d

    .line 415
    const-string v2, " s=\"1\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 417
    :cond_d
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    iget-object v2, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    if-eqz v2, :cond_e

    .line 420
    const-string v2, "<subject>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->mSubject:Ljava/lang/String;

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    const-string v2, "</subject>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    :cond_e
    iget-object v2, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    if-eqz v2, :cond_10

    .line 424
    const-string v2, "<body"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 425
    iget-object v2, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 426
    const-string v2, " encode=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->mBodyEncoding:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_f
    const-string v2, ">"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->mBody:Ljava/lang/String;

    invoke-static {v3}, Lmiui/push/StringUtils;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</body>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_10
    iget-object v2, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    if-eqz v2, :cond_11

    .line 431
    const-string v2, "<thread>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmiui/push/Message;->thread:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "</thread>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_11
    const-string v2, "error"

    iget-object v3, p0, Lmiui/push/Message;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 435
    invoke-virtual {p0}, Lmiui/push/Message;->getError()Lmiui/push/XMPPError;

    move-result-object v1

    .line 436
    .local v1, "error":Lmiui/push/XMPPError;
    if-eqz v1, :cond_12

    .line 437
    invoke-virtual {v1}, Lmiui/push/XMPPError;->toXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .end local v1    # "error":Lmiui/push/XMPPError;
    :cond_12
    invoke-virtual {p0}, Lmiui/push/Message;->getExtensionsXML()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    const-string v2, "</message>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
