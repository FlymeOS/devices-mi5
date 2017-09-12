.class public Lmiui/maml/elements/TimepanelScreenElement;
.super Lmiui/maml/elements/ImageScreenElement;
.source "TimepanelScreenElement.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TimepanelScreenElement"

.field private static final M12:Ljava/lang/String; = "hh:mm"

.field private static final M24:Ljava/lang/String; = "kk:mm"

.field public static final TAG_NAME:Ljava/lang/String; = "Time"


# instance fields
.field private mBmpHeight:I

.field private mBmpWidth:I

.field protected mCalendar:Ljava/util/Calendar;

.field private mFormat:Ljava/lang/String;

.field private mFormatExp:Lmiui/maml/data/Expression;

.field private mFormatRaw:Ljava/lang/String;

.field private mLoadResourceFailed:Z

.field private mLocalizedZero:C

.field private mOldFormat:Ljava/lang/String;

.field private mOldSrc:Ljava/lang/String;

.field private mPreMinute:J

.field private mPreTime:Ljava/lang/CharSequence;

.field private mSpace:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 34
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 57
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    iput-char v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    .line 61
    const-string v0, "format"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/TimepanelScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    .line 62
    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v0

    const-string v1, "formatExp"

    invoke-virtual {p0, p1, v1}, Lmiui/maml/elements/TimepanelScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatExp:Lmiui/maml/data/Expression;

    .line 63
    const-string v0, "space"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lmiui/maml/elements/TimepanelScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/TimepanelScreenElement;->scale(D)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I

    .line 64
    return-void
.end method

.method private createBitmap()V
    .locals 9

    .prologue
    .line 150
    const-string v3, "0123456789:"

    .line 151
    .local v3, "digits":Ljava/lang/String;
    const/4 v5, 0x0

    .line 152
    .local v5, "maxWidth":I
    const/4 v1, 0x0

    .line 153
    .local v1, "density":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_4

    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-direct {p0, v6}, Lmiui/maml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 155
    .local v2, "digitBmp":Landroid/graphics/Bitmap;
    if-nez v2, :cond_0

    .line 156
    const/4 v6, 0x1

    iput-boolean v6, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    .line 157
    const-string v6, "TimepanelScreenElement"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to load digit bitmap: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    .end local v2    # "digitBmp":Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 160
    .restart local v2    # "digitBmp":Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 161
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 162
    :cond_1
    iget v6, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_2

    .line 163
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    .line 164
    :cond_2
    if-nez v1, :cond_3

    .line 165
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v1

    .line 153
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    .end local v2    # "digitBmp":Landroid/graphics/Bitmap;
    :cond_4
    mul-int/lit8 v6, v5, 0x5

    iget v7, p0, Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I

    mul-int/lit8 v7, v7, 0x4

    add-int/2addr v6, v7

    iget v7, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    .local v0, "bmp":Landroid/graphics/Bitmap;
    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 169
    iget-object v6, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v6, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 170
    iget v6, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpHeight:I

    int-to-double v6, v6

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/TimepanelScreenElement;->descale(D)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/TimepanelScreenElement;->setActualHeight(D)V

    goto :goto_1
.end method

.method private getDigitBmp(C)Landroid/graphics/Bitmap;
    .locals 4
    .param p1, "c"    # C

    .prologue
    .line 174
    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "src":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 176
    const-string v0, "time.png"

    .line 178
    :cond_0
    const/16 v2, 0x3a

    if-ne p1, v2, :cond_1

    const-string v1, "dot"

    .line 180
    .end local p1    # "c":C
    .local v1, "suffix":Ljava/lang/String;
    :goto_0
    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-static {v0, v1}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 178
    .end local v1    # "suffix":Ljava/lang/String;
    .restart local p1    # "c":C
    :cond_1
    iget-char v2, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    if-lt p1, v2, :cond_2

    iget-char v2, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    add-int/lit8 v2, v2, 0x9

    if-gt p1, v2, :cond_2

    iget-char v2, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    sub-int v2, p1, v2

    add-int/lit8 v2, v2, 0x30

    int-to-char p1, v2

    .end local p1    # "c":C
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 185
    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    .line 186
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    goto :goto_0
.end method

.method private setDateFormat()V
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatExp:Lmiui/maml/data/Expression;

    if-nez v0, :cond_1

    .line 191
    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "kk:mm"

    :goto_0
    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    .line 195
    :goto_1
    return-void

    .line 191
    :cond_0
    const-string v0, "hh:mm"

    goto :goto_0

    .line 193
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormatRaw:Ljava/lang/String;

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mFormat:Ljava/lang/String;

    goto :goto_1
.end method

.method private updateTime(Z)V
    .locals 12
    .param p1, "forceUpdate"    # Z

    .prologue
    .line 113
    iget-boolean v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    if-eqz v9, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v9}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 118
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 123
    .local v2, "currentTimeMillis":J
    iget-object v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v9, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 124
    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    invoke-static {v9, v10}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 125
    .local v6, "newTime":Ljava/lang/CharSequence;
    if-nez p1, :cond_2

    iget-object v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 128
    :cond_2
    iput-object v6, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 129
    new-instance v7, Landroid/graphics/Canvas;

    invoke-direct {v7, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 130
    .local v7, "tmpCanvas":Landroid/graphics/Canvas;
    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v7, v9, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 131
    const/4 v8, 0x0

    .line 132
    .local v8, "x":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v5, v9, :cond_4

    .line 133
    invoke-interface {v6, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    .line 134
    .local v4, "digit":C
    invoke-direct {p0, v4}, Lmiui/maml/elements/TimepanelScreenElement;->getDigitBmp(C)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 135
    .local v1, "bmp":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 136
    int-to-float v9, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v1, v9, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 137
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    .line 138
    iget v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I

    add-int/2addr v8, v9

    .line 132
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 141
    .end local v1    # "bmp":Landroid/graphics/Bitmap;
    .end local v4    # "digit":C
    :cond_4
    iget-object v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v9}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->updateVersion()I

    .line 143
    iget v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mSpace:I

    sub-int v9, v8, v9

    iput v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    .line 144
    iget v9, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    int-to-double v10, v9

    invoke-virtual {p0, v10, v11}, Lmiui/maml/elements/TimepanelScreenElement;->descale(D)D

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lmiui/maml/elements/TimepanelScreenElement;->setActualWidth(D)V

    .line 146
    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->requestUpdate()V

    goto :goto_0
.end method


# virtual methods
.method protected doTick(J)V
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/ImageScreenElement;->doTick(J)V

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    div-long v2, v4, v6

    .line 97
    .local v2, "minute":J
    invoke-virtual {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v1

    .line 98
    .local v1, "src":Ljava/lang/String;
    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->getFormat()Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "format":Ljava/lang/String;
    iget-wide v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreMinute:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldSrc:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldFormat:Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 100
    :cond_0
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lmiui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    .line 101
    iput-wide v2, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreMinute:J

    .line 102
    iput-object v1, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldSrc:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mOldFormat:Ljava/lang/String;

    .line 105
    :cond_1
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLoadResourceFailed:Z

    .line 79
    return-void
.end method

.method protected getBitmapWidth()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mBmpWidth:I

    return v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0}, Lmiui/maml/elements/ImageScreenElement;->init()V

    .line 69
    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->setDateFormat()V

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mPreTime:Ljava/lang/CharSequence;

    .line 71
    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->createBitmap()V

    .line 72
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    .line 73
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 87
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mCalendar:Ljava/util/Calendar;

    .line 88
    invoke-static {}, Ljava/text/DecimalFormatSymbols;->getInstance()Ljava/text/DecimalFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DecimalFormatSymbols;->getZeroDigit()C

    move-result v0

    iput-char v0, p0, Lmiui/maml/elements/TimepanelScreenElement;->mLocalizedZero:C

    .line 89
    invoke-direct {p0}, Lmiui/maml/elements/TimepanelScreenElement;->setDateFormat()V

    .line 90
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/maml/elements/TimepanelScreenElement;->updateTime(Z)V

    .line 91
    return-void
.end method
