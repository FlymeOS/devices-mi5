.class public Lmiui/app/ToggleDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "ToggleDrawable.java"


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "bgDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "toggle"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x0

    .line 11
    invoke-static {p1, p2}, Lmiui/app/ToggleDrawable;->getArray(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0, v2, v2, v0, v1}, Lmiui/app/ToggleDrawable;->setBounds(IIII)V

    .line 13
    return-void
.end method

.method private static getArray(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)[Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p0, "bgDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "toggle"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 16
    const/4 v1, 0x2

    new-array v0, v1, [Landroid/graphics/drawable/Drawable;

    .line 17
    .local v0, "array":[Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 18
    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 19
    return-object v0
.end method
