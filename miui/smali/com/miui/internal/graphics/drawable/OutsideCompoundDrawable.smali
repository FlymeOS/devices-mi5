.class public Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# static fields
.field private static dZ:I


# instance fields
.field private dW:Landroid/graphics/drawable/Drawable;

.field private dX:Landroid/graphics/drawable/Drawable;

.field private dY:Landroid/graphics/drawable/Drawable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    sput v0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dZ:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 44
    sget v0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dZ:I

    if-nez v0, :cond_0

    .line 46
    :try_start_0
    const-string v0, "com.android.internal.R$attr"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    const-string v1, "drawable"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 48
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    sput v0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dZ:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 148
    :cond_2
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, -0x2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    goto :goto_0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 282
    iget-object v1, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 283
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 287
    :goto_0
    return v0

    .line 286
    :cond_0
    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 62
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    .line 66
    :cond_0
    :goto_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_a

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    if-ge v4, v5, :cond_1

    const/4 v6, 0x3

    if-eq v0, v6, :cond_a

    .line 68
    :cond_1
    if-ne v0, v3, :cond_0

    .line 72
    if-gt v4, v5, :cond_0

    .line 76
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 79
    const-string v4, "item-top"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v1

    .line 95
    :goto_1
    invoke-interface {p3}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v6

    move v4, v1

    .line 96
    :goto_2
    if-ge v4, v6, :cond_b

    .line 97
    invoke-interface {p3, v4}, Landroid/util/AttributeSet;->getAttributeNameResource(I)I

    move-result v7

    .line 98
    if-nez v7, :cond_4

    move v4, v1

    .line 106
    :goto_3
    if-eqz v4, :cond_6

    .line 107
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 120
    :goto_4
    if-eqz v4, :cond_0

    .line 121
    if-nez v0, :cond_8

    .line 122
    iput-object v4, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    .line 123
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto :goto_0

    .line 82
    :cond_2
    const-string v4, "item-base"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v2

    .line 83
    goto :goto_1

    .line 85
    :cond_3
    const-string v4, "item-bottom"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 86
    goto :goto_1

    .line 99
    :cond_4
    sget v8, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dZ:I

    if-ne v7, v8, :cond_5

    .line 100
    invoke-interface {p3, v4, v1}, Landroid/util/AttributeSet;->getAttributeResourceValue(II)I

    move-result v4

    goto :goto_3

    .line 96
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 109
    :cond_6
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x4

    if-eq v4, v6, :cond_6

    .line 111
    if-eq v4, v3, :cond_7

    .line 112
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": <item> tag requires a \'drawable\' attribute or "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "child tag defining a drawable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_7
    invoke-static {p1, p2, p3}, Landroid/graphics/drawable/Drawable;->createFromXmlInner(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    goto :goto_4

    .line 125
    :cond_8
    if-ne v0, v2, :cond_9

    .line 126
    iput-object v4, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    .line 127
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_0

    .line 129
    :cond_9
    if-ne v0, v3, :cond_0

    .line 130
    iput-object v4, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    .line 131
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/16 :goto_0

    .line 135
    :cond_a
    return-void

    :cond_b
    move v4, v1

    goto :goto_3
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 296
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public jumpToCurrentState()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 241
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 242
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 247
    :cond_2
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 222
    .line 223
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    .line 224
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    .line 226
    :goto_0
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    .line 227
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_5

    :cond_0
    move v0, v2

    .line 229
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_6

    .line 230
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    .line 233
    :cond_3
    :goto_2
    return v1

    :cond_4
    move v0, v2

    .line 224
    goto :goto_0

    :cond_5
    move v0, v1

    .line 227
    goto :goto_1

    :cond_6
    move v1, v0

    goto :goto_2

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public onStateChange([I)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 206
    .line 207
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 208
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    .line 210
    :goto_0
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v0, :cond_6

    :cond_0
    move v0, v2

    .line 213
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 214
    iget-object v3, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    move v0, v1

    .line 217
    :cond_4
    return v0

    :cond_5
    move v0, v2

    .line 208
    goto :goto_0

    :cond_6
    move v0, v1

    .line 211
    goto :goto_1

    :cond_7
    move v0, v1

    goto :goto_0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 303
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 184
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 189
    :cond_2
    return-void
.end method

.method public setBounds(IIII)V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 152
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 153
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 158
    if-gtz v0, :cond_1

    move v0, v1

    .line 161
    :cond_1
    iget-object v2, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    sub-int v0, p2, v0

    invoke-virtual {v2, p1, v0, p3, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 164
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 165
    if-gtz v0, :cond_4

    .line 168
    :goto_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    add-int/2addr v1, p4

    invoke-virtual {v0, p1, p4, p3, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 170
    :cond_3
    return-void

    :cond_4
    move v1, v0

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 199
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 200
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 202
    :cond_2
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dW:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dX:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 258
    iget-object v0, p0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->dY:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 260
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 307
    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 308
    invoke-virtual {p0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 310
    :cond_0
    return-void
.end method
