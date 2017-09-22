.class public Lmiui/util/DrawableUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static isPlaceholder(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 25
    instance-of v0, p0, Lcom/miui/internal/graphics/drawable/PlaceholderDrawable;

    return v0
.end method
