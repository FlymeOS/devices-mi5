.class public final Lcom/android/settings/dndmode/b;
.super Ljava/lang/Object;
.source "Alarm.java"


# static fields
.field private static aac:[I


# instance fields
.field private aad:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 275
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/dndmode/b;->aac:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput p1, p0, Lcom/android/settings/dndmode/b;->aad:I

    .line 291
    return-void
.end method

.method private isSet(I)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 353
    iget v1, p0, Lcom/android/settings/dndmode/b;->aad:I

    shl-int v2, v0, p1

    and-int/2addr v1, v2

    if-lez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/settings/dndmode/b;)V
    .locals 1

    .prologue
    .line 365
    iget v0, p1, Lcom/android/settings/dndmode/b;->aad:I

    iput v0, p0, Lcom/android/settings/dndmode/b;->aad:I

    .line 366
    return-void
.end method

.method public l(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x1

    .line 294
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    iget v0, p0, Lcom/android/settings/dndmode/b;->aad:I

    if-nez v0, :cond_1

    .line 298
    if-eqz p2, :cond_0

    const v0, 0x7f0c0bbc

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 337
    :goto_0
    return-object v0

    .line 298
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 303
    :cond_1
    iget v0, p0, Lcom/android/settings/dndmode/b;->aad:I

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_2

    .line 304
    const v0, 0x7f0c0bba

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 308
    :cond_2
    iget v0, p0, Lcom/android/settings/dndmode/b;->aad:I

    const/16 v1, 0x80

    if-ne v0, v1, :cond_4

    .line 309
    const v0, 0x7f0c0bbb

    .line 310
    invoke-static {p1}, Lcom/android/settings/dndmode/n;->by(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    const v0, 0x7f0c0bb6

    .line 313
    :cond_3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 317
    :cond_4
    iget v0, p0, Lcom/android/settings/dndmode/b;->aad:I

    move v1, v0

    move v0, v2

    .line 318
    :goto_1
    if-lez v1, :cond_6

    .line 319
    and-int/lit8 v4, v1, 0x1

    if-ne v4, v6, :cond_5

    add-int/lit8 v0, v0, 0x1

    .line 320
    :cond_5
    shr-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 324
    :cond_6
    new-instance v1, Ljava/text/DateFormatSymbols;

    invoke-direct {v1}, Ljava/text/DateFormatSymbols;-><init>()V

    .line 325
    if-le v0, v6, :cond_8

    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getShortWeekdays()[Ljava/lang/String;

    move-result-object v1

    .line 330
    :goto_2
    const/4 v4, 0x7

    if-ge v2, v4, :cond_9

    .line 331
    iget v4, p0, Lcom/android/settings/dndmode/b;->aad:I

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_7

    .line 332
    sget-object v4, Lcom/android/settings/dndmode/b;->aac:[I

    aget v4, v4, v2

    aget-object v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    add-int/lit8 v0, v0, -0x1

    .line 334
    if-lez v0, :cond_7

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 325
    :cond_8
    invoke-virtual {v1}, Ljava/text/DateFormatSymbols;->getWeekdays()[Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 337
    :cond_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public pR()I
    .locals 1

    .prologue
    .line 341
    iget v0, p0, Lcom/android/settings/dndmode/b;->aad:I

    sparse-switch v0, :sswitch_data_0

    .line 348
    const/4 v0, 0x4

    :goto_0
    return v0

    .line 343
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 345
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 341
    nop

    :sswitch_data_0
    .sparse-switch
        0x1f -> :sswitch_1
        0x7f -> :sswitch_0
    .end sparse-switch
.end method

.method public pS()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/android/settings/dndmode/b;->aad:I

    return v0
.end method

.method public pT()[Z
    .locals 4

    .prologue
    const/4 v3, 0x7

    .line 383
    new-array v1, v3, [Z

    .line 384
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    .line 385
    invoke-direct {p0, v0}, Lcom/android/settings/dndmode/b;->isSet(I)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 384
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_0
    return-object v1
.end method

.method public pU()Z
    .locals 7

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x7

    const/4 v0, 0x1

    .line 456
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    move v2, v1

    .line 457
    :goto_0
    if-ge v2, v6, :cond_3

    .line 458
    iget v4, p0, Lcom/android/settings/dndmode/b;->aad:I

    shl-int v5, v0, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 459
    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    .line 460
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v4, v0, :cond_2

    .line 470
    :cond_0
    :goto_1
    return v0

    .line 464
    :cond_1
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit8 v5, v2, 0x2

    if-eq v4, v5, :cond_0

    .line 457
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move v0, v1

    .line 470
    goto :goto_1
.end method

.method public set(IZ)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 357
    if-eqz p2, :cond_0

    .line 358
    iget v0, p0, Lcom/android/settings/dndmode/b;->aad:I

    shl-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/dndmode/b;->aad:I

    .line 362
    :goto_0
    return-void

    .line 360
    :cond_0
    iget v0, p0, Lcom/android/settings/dndmode/b;->aad:I

    shl-int/2addr v1, p1

    xor-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/dndmode/b;->aad:I

    goto :goto_0
.end method
