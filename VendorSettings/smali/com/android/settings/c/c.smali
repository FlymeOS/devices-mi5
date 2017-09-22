.class public Lcom/android/vendorsettings/c/c;
.super Lcom/android/vendorsettings/c/b;
.source "InsetBoundsDrawable.java"


# instance fields
.field private final abo:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/c/b;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 30
    iput p2, p0, Lcom/android/vendorsettings/c/c;->abo:I

    .line 31
    return-void
.end method


# virtual methods
.method public setBounds(IIII)V
    .locals 2

    .prologue
    .line 35
    iget v0, p0, Lcom/android/vendorsettings/c/c;->abo:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/vendorsettings/c/c;->abo:I

    sub-int v1, p3, v1

    invoke-super {p0, v0, p2, v1, p4}, Lcom/android/vendorsettings/c/b;->setBounds(IIII)V

    .line 36
    return-void
.end method
