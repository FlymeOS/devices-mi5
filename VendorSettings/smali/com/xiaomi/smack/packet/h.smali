.class public Lcom/xiaomi/smack/packet/h;
.super Ljava/lang/Object;
.source "XMPPError.java"


# instance fields
.field private bje:Ljava/lang/String;

.field private bjf:Ljava/util/List;

.field private code:I

.field private message:Ljava/lang/String;

.field private reason:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .prologue
    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/h;->bjf:Ljava/util/List;

    .line 244
    iput p1, p0, Lcom/xiaomi/smack/packet/h;->code:I

    .line 245
    iput-object p2, p0, Lcom/xiaomi/smack/packet/h;->type:Ljava/lang/String;

    .line 246
    iput-object p3, p0, Lcom/xiaomi/smack/packet/h;->reason:Ljava/lang/String;

    .line 247
    iput-object p4, p0, Lcom/xiaomi/smack/packet/h;->bje:Ljava/lang/String;

    .line 248
    iput-object p5, p0, Lcom/xiaomi/smack/packet/h;->message:Ljava/lang/String;

    .line 249
    iput-object p6, p0, Lcom/xiaomi/smack/packet/h;->bjf:Ljava/util/List;

    .line 250
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/h;->bjf:Ljava/util/List;

    .line 253
    const-string v0, "ext_err_code"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaomi/smack/packet/h;->code:I

    .line 254
    const-string v0, "ext_err_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    const-string v0, "ext_err_type"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/h;->type:Ljava/lang/String;

    .line 257
    :cond_0
    const-string v0, "ext_err_cond"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/h;->bje:Ljava/lang/String;

    .line 258
    const-string v0, "ext_err_reason"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/h;->reason:Ljava/lang/String;

    .line 259
    const-string v0, "ext_err_msg"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/h;->message:Ljava/lang/String;

    .line 260
    const-string v0, "ext_exts"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v2

    .line 261
    if-eqz v2, :cond_2

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, v2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/xiaomi/smack/packet/h;->bjf:Ljava/util/List;

    .line 263
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v0, v2, v1

    .line 264
    check-cast v0, Landroid/os/Bundle;

    .line 265
    invoke-static {v0}, Lcom/xiaomi/smack/packet/a;->l(Landroid/os/Bundle;)Lcom/xiaomi/smack/packet/a;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_1

    .line 267
    iget-object v4, p0, Lcom/xiaomi/smack/packet/h;->bjf:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 271
    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/smack/packet/i;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-object v0, p0, Lcom/xiaomi/smack/packet/h;->bjf:Ljava/util/List;

    .line 185
    invoke-direct {p0, p1}, Lcom/xiaomi/smack/packet/h;->a(Lcom/xiaomi/smack/packet/i;)V

    .line 186
    iput-object v0, p0, Lcom/xiaomi/smack/packet/h;->message:Ljava/lang/String;

    .line 187
    return-void
.end method

.method private a(Lcom/xiaomi/smack/packet/i;)V
    .locals 1

    .prologue
    .line 281
    invoke-static {p1}, Lcom/xiaomi/smack/packet/i;->b(Lcom/xiaomi/smack/packet/i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaomi/smack/packet/h;->bje:Ljava/lang/String;

    .line 282
    return-void
.end method


# virtual methods
.method public declared-synchronized getExtensions()Ljava/util/List;
    .locals 1

    .prologue
    .line 408
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->bjf:Ljava/util/List;

    if-nez v0, :cond_0

    .line 409
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 411
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->bjf:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 408
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->reason:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->type:Ljava/lang/String;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 325
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 326
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 327
    const-string v0, "ext_err_type"

    iget-object v1, p0, Lcom/xiaomi/smack/packet/h;->type:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_0
    const-string v0, "ext_err_code"

    iget v1, p0, Lcom/xiaomi/smack/packet/h;->code:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 330
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->reason:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 331
    const-string v0, "ext_err_reason"

    iget-object v1, p0, Lcom/xiaomi/smack/packet/h;->reason:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :cond_1
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->bje:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 334
    const-string v0, "ext_err_cond"

    iget-object v1, p0, Lcom/xiaomi/smack/packet/h;->bje:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->message:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 337
    const-string v0, "ext_err_msg"

    iget-object v1, p0, Lcom/xiaomi/smack/packet/h;->message:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->bjf:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 340
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->bjf:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v3, v0, [Landroid/os/Bundle;

    .line 341
    const/4 v0, 0x0

    .line 342
    iget-object v1, p0, Lcom/xiaomi/smack/packet/h;->bjf:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/packet/a;

    .line 343
    invoke-virtual {v0}, Lcom/xiaomi/smack/packet/a;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    .line 344
    if-eqz v5, :cond_6

    .line 345
    add-int/lit8 v0, v1, 0x1

    aput-object v5, v3, v1

    :goto_1
    move v1, v0

    .line 347
    goto :goto_0

    .line 348
    :cond_4
    const-string v0, "ext_exts"

    invoke-virtual {v2, v0, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 350
    :cond_5
    return-object v2

    :cond_6
    move v0, v1

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 390
    iget-object v1, p0, Lcom/xiaomi/smack/packet/h;->bje:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p0, Lcom/xiaomi/smack/packet/h;->bje:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    :cond_0
    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaomi/smack/packet/h;->code:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    iget-object v1, p0, Lcom/xiaomi/smack/packet/h;->message:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 395
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaomi/smack/packet/h;->message:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXML()Ljava/lang/String;
    .locals 3

    .prologue
    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 360
    const-string v0, "<error code=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaomi/smack/packet/h;->code:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->type:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 362
    const-string v0, " type=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->type:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    :cond_0
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->reason:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 367
    const-string v0, " reason=\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->reason:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    :cond_1
    const-string v0, ">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->bje:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 373
    const-string v0, "<"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaomi/smack/packet/h;->bje:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    const-string v0, " xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\"/>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->message:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 377
    const-string v0, "<text xml:lang=\"en\" xmlns=\"urn:ietf:params:xml:ns:xmpp-stanzas\">"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    iget-object v0, p0, Lcom/xiaomi/smack/packet/h;->message:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    const-string v0, "</text>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    :cond_3
    invoke-virtual {p0}, Lcom/xiaomi/smack/packet/h;->getExtensions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/smack/packet/f;

    .line 382
    invoke-interface {v0}, Lcom/xiaomi/smack/packet/f;->toXML()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 384
    :cond_4
    const-string v0, "</error>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
