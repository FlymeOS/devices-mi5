.class public Lcom/miui/internal/variable/v21/Android_Graphics_Drawable_Drawable_class;
.super Lcom/miui/internal/variable/v17/Android_Graphics_Drawable_Drawable_class;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miui/internal/variable/v17/Android_Graphics_Drawable_Drawable_class;-><init>()V

    return-void
.end method


# virtual methods
.method public buildProxy()V
    .locals 2

    .prologue
    .line 27
    const-string v0, "createFromXmlInner"

    const-string v1, "(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;"

    invoke-virtual {p0, v0, v1}, Lcom/miui/internal/variable/v21/Android_Graphics_Drawable_Drawable_class;->attachMethod(Ljava/lang/String;Ljava/lang/String;)J

    .line 29
    return-void
.end method

.method protected handle()V
    .locals 9

    .prologue
    .line 34
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lcom/miui/internal/variable/v21/Android_Graphics_Drawable_Drawable_class;->handleCreateFromXmlInner(JLandroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    :goto_0
    return-void

    .line 35
    :catch_0
    move-exception v0

    .line 36
    invoke-static {}, Lcom/miui/internal/variable/VariableExceptionHandler;->getInstance()Lcom/miui/internal/variable/VariableExceptionHandler;

    move-result-object v1

    const-string v2, "android.graphics.drawable.Drawable.createFromXmlInner"

    invoke-virtual {v1, v2, v0}, Lcom/miui/internal/variable/VariableExceptionHandler;->onThrow(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected handleCreateFromXmlInner(JLandroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    invoke-interface {p5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 44
    const-string v1, "outside-compound"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    new-instance v0, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;

    invoke-direct {v0}, Lcom/miui/internal/graphics/drawable/OutsideCompoundDrawable;-><init>()V

    .line 52
    :goto_0
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p4, p5, p6}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;)V

    .line 55
    :cond_0
    :goto_1
    return-object v0

    .line 46
    :cond_1
    const-string v1, "placeholder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 47
    new-instance v0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;

    invoke-direct {v0}, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;-><init>()V

    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual/range {p0 .. p7}, Lcom/miui/internal/variable/v21/Android_Graphics_Drawable_Drawable_class;->originalCreateFromXmlInner(JLandroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1
.end method

.method protected originalCreateFromXmlInner(JLandroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 60
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "com.miui.internal.variable.v21.Android_Graphics_Drawable_Drawable_class.originalCreateFromXmlInner(long, Drawable, Resources, XmlPullParser, AttributeSet, Theme)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
