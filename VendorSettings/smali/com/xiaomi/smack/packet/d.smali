.class public Lcom/xiaomi/smack/packet/d;
.super Lcom/xiaomi/smack/packet/e;
.source "Message.java"


# instance fields
.field private aZN:Ljava/lang/String;

.field private biA:Ljava/lang/String;

.field private biB:Ljava/lang/String;

.field private biC:Ljava/lang/String;

.field private biD:Ljava/lang/String;

.field private biE:Z

.field private biu:Ljava/lang/String;

.field private biv:Ljava/lang/String;

.field private biw:Ljava/lang/String;

.field private bix:Ljava/lang/String;

.field private biy:Ljava/lang/String;

.field private biz:Z

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-direct {p0}, Lcom/xiaomi/smack/packet/e;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->type:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biu:Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lcom/xiaomi/smack/packet/d;->biz:Z

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biA:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biB:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biC:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biD:Ljava/lang/String;

    .line 122
    iput-boolean v1, p0, Lcom/xiaomi/smack/packet/d;->biE:Z

    .line 128
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1}, Lcom/xiaomi/smack/packet/e;-><init>(Landroid/os/Bundle;)V

    .line 103
    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->type:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biu:Ljava/lang/String;

    .line 110
    iput-boolean v1, p0, Lcom/xiaomi/smack/packet/d;->biz:Z

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biA:Ljava/lang/String;

    .line 116
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biB:Ljava/lang/String;

    .line 118
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biC:Ljava/lang/String;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biD:Ljava/lang/String;

    .line 122
    iput-boolean v1, p0, Lcom/xiaomi/smack/packet/d;->biE:Z

    .line 152
    const-string v0, "ext_msg_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->type:Ljava/lang/String;

    .line 153
    const-string v0, "ext_msg_lang"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biv:Ljava/lang/String;

    .line 154
    const-string v0, "ext_msg_thread"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biu:Ljava/lang/String;

    .line 155
    const-string v0, "ext_msg_sub"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biw:Ljava/lang/String;

    .line 156
    const-string v0, "ext_msg_body"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->bix:Ljava/lang/String;

    .line 157
    const-string v0, "ext_body_encode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biy:Ljava/lang/String;

    .line 158
    const-string v0, "ext_msg_appid"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->aZN:Ljava/lang/String;

    .line 159
    const-string v0, "ext_msg_trans"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/smack/packet/d;->biz:Z

    .line 160
    const-string v0, "ext_msg_encrypt"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaomi/smack/packet/d;->biE:Z

    .line 161
    const-string v0, "ext_msg_seq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biA:Ljava/lang/String;

    .line 162
    const-string v0, "ext_msg_mseq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biB:Ljava/lang/String;

    .line 163
    const-string v0, "ext_msg_fseq"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biC:Ljava/lang/String;

    .line 164
    const-string v0, "ext_msg_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/d;->biD:Ljava/lang/String;

    .line 165
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 454
    if-ne p0, p1, :cond_1

    move v1, v0

    .line 476
    :cond_0
    :goto_0
    return v1

    .line 456
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 459
    check-cast p1, Lcom/xiaomi/smack/packet/d;

    .line 461
    invoke-super {p0, p1}, Lcom/xiaomi/smack/packet/e;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->bix:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->bix:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/smack/packet/d;->bix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 467
    :cond_2
    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biv:Ljava/lang/String;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biv:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/smack/packet/d;->biv:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    :cond_3
    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biw:Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biw:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/smack/packet/d;->biw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 473
    :cond_4
    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biu:Ljava/lang/String;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biu:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/smack/packet/d;->biu:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 476
    :cond_5
    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->type:Ljava/lang/String;

    iget-object v3, p1, Lcom/xiaomi/smack/packet/d;->type:Ljava/lang/String;

    if-ne v2, v3, :cond_a

    :goto_1
    move v1, v0

    goto :goto_0

    .line 464
    :cond_6
    iget-object v2, p1, Lcom/xiaomi/smack/packet/d;->bix:Ljava/lang/String;

    if-eqz v2, :cond_2

    goto :goto_0

    .line 467
    :cond_7
    iget-object v2, p1, Lcom/xiaomi/smack/packet/d;->biv:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_0

    .line 470
    :cond_8
    iget-object v2, p1, Lcom/xiaomi/smack/packet/d;->biw:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_0

    .line 473
    :cond_9
    iget-object v2, p1, Lcom/xiaomi/smack/packet/d;->biu:Ljava/lang/String;

    if-eqz v2, :cond_5

    goto :goto_0

    :cond_a
    move v0, v1

    .line 476
    goto :goto_1
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/xiaomi/smack/packet/d;->aZN:Ljava/lang/String;

    return-object v0
.end method

.method public getFSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/xiaomi/smack/packet/d;->biC:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/xiaomi/smack/packet/d;->biv:Ljava/lang/String;

    return-object v0
.end method

.method public getMSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/xiaomi/smack/packet/d;->biB:Ljava/lang/String;

    return-object v0
.end method

.method public getSeq()Ljava/lang/String;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/xiaomi/smack/packet/d;->biA:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/xiaomi/smack/packet/d;->biD:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/xiaomi/smack/packet/d;->type:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 482
    iget-object v0, p0, Lcom/xiaomi/smack/packet/d;->type:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaomi/smack/packet/d;->type:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 483
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/smack/packet/d;->bix:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaomi/smack/packet/d;->bix:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    .line 484
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/smack/packet/d;->biu:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaomi/smack/packet/d;->biu:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v2

    .line 485
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/xiaomi/smack/packet/d;->biv:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaomi/smack/packet/d;->biv:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_3
    add-int/2addr v0, v2

    .line 486
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biw:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->biw:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 487
    return v0

    :cond_1
    move v0, v1

    .line 482
    goto :goto_0

    :cond_2
    move v0, v1

    .line 483
    goto :goto_1

    :cond_3
    move v0, v1

    .line 484
    goto :goto_2

    :cond_4
    move v0, v1

    .line 485
    goto :goto_3
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/xiaomi/smack/packet/d;->aZN:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/xiaomi/smack/packet/d;->bix:Ljava/lang/String;

    .line 286
    return-void
.end method

.method public setBody(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/xiaomi/smack/packet/d;->bix:Ljava/lang/String;

    .line 290
    iput-object p2, p0, Lcom/xiaomi/smack/packet/d;->biy:Ljava/lang/String;

    .line 291
    return-void
.end method

.method public setEncrypted(Z)V
    .locals 0

    .prologue
    .line 232
    iput-boolean p1, p0, Lcom/xiaomi/smack/packet/d;->biE:Z

    .line 233
    return-void
.end method

.method public setFSeq(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lcom/xiaomi/smack/packet/d;->biC:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public setIsTransient(Z)V
    .locals 0

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/xiaomi/smack/packet/d;->biz:Z

    .line 179
    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/xiaomi/smack/packet/d;->biv:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public setMSeq(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Lcom/xiaomi/smack/packet/d;->biB:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public setSeq(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/xiaomi/smack/packet/d;->biA:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/xiaomi/smack/packet/d;->biD:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/xiaomi/smack/packet/d;->biw:Ljava/lang/String;

    .line 260
    return-void
.end method

.method public setThread(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 309
    iput-object p1, p0, Lcom/xiaomi/smack/packet/d;->biu:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/xiaomi/smack/packet/d;->type:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 334
    invoke-super {p0}, Lcom/xiaomi/smack/packet/e;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    .line 335
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 336
    const-string v1, "ext_msg_type"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->biv:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 339
    const-string v1, "ext_msg_lang"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biv:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_1
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->biw:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 342
    const-string v1, "ext_msg_sub"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biw:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :cond_2
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->bix:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 345
    const-string v1, "ext_msg_body"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->bix:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    :cond_3
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->biy:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 348
    const-string v1, "ext_body_encode"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biy:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :cond_4
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->biu:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 351
    const-string v1, "ext_msg_thread"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_5
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->aZN:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 354
    const-string v1, "ext_msg_appid"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->aZN:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_6
    iget-boolean v1, p0, Lcom/xiaomi/smack/packet/d;->biz:Z

    if-eqz v1, :cond_7

    .line 357
    const-string v1, "ext_msg_trans"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 359
    :cond_7
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->biA:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 360
    const-string v1, "ext_msg_seq"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biA:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    :cond_8
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->biB:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 363
    const-string v1, "ext_msg_mseq"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biB:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    :cond_9
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->biC:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 366
    const-string v1, "ext_msg_fseq"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biC:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    :cond_a
    iget-boolean v1, p0, Lcom/xiaomi/smack/packet/d;->biE:Z

    if-eqz v1, :cond_b

    .line 370
    const-string v1, "ext_msg_encrypt"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 373
    :cond_b
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->biD:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 374
    const-string v1, "ext_msg_status"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biD:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :cond_c
    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 381
    const-string v1, "<message"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getXmlns()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 383
    const-string v1, " xmlns=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getXmlns()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_0
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->biv:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 386
    const-string v1, " xml:lang=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_1
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getPacketID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 389
    const-string v1, " id=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getPacketID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_2
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getTo()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 392
    const-string v1, " to=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getSeq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 395
    const-string v1, " seq=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getSeq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_4
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getMSeq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 398
    const-string v1, " mseq=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getMSeq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_5
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getFSeq()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 401
    const-string v1, " fseq=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getFSeq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_6
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getStatus()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 404
    const-string v1, " status=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_7
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getFrom()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 407
    const-string v1, " from=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getFrom()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_8
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getChannelId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 410
    const-string v1, " chid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getChannelId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_9
    iget-boolean v1, p0, Lcom/xiaomi/smack/packet/d;->biz:Z

    if-eqz v1, :cond_a

    .line 413
    const-string v1, " transient=\"true\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_a
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->aZN:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 416
    const-string v1, " appid=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_b
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->type:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 419
    const-string v1, " type=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    :cond_c
    iget-boolean v1, p0, Lcom/xiaomi/smack/packet/d;->biE:Z

    if-eqz v1, :cond_d

    .line 422
    const-string v1, " s=\"1\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_d
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->biw:Ljava/lang/String;

    if-eqz v1, :cond_e

    .line 427
    const-string v1, "<subject>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biw:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    const-string v1, "</subject>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_e
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->bix:Ljava/lang/String;

    if-eqz v1, :cond_10

    .line 431
    const-string v1, "<body"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->biy:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 433
    const-string v1, " encode=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biy:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    :cond_f
    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->bix:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaomi/smack/d/g;->escapeForXML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</body>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    :cond_10
    iget-object v1, p0, Lcom/xiaomi/smack/packet/d;->biu:Ljava/lang/String;

    if-eqz v1, :cond_11

    .line 438
    const-string v1, "<thread>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->biu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</thread>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    :cond_11
    const-string v1, "error"

    iget-object v2, p0, Lcom/xiaomi/smack/packet/d;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 442
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->Ke()Lcom/xiaomi/smack/packet/h;

    move-result-object v1

    .line 443
    if-eqz v1, :cond_12

    .line 444
    invoke-virtual {v1}, Lcom/xiaomi/smack/packet/h;->toXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_12
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/d;->getExtensionsXML()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    const-string v1, "</message>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
