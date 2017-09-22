.class Lcom/android/vendorsettings/hG;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ad:Lcom/android/vendorsettings/hF;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/hF;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/android/vendorsettings/hG;->Ad:Lcom/android/vendorsettings/hF;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/android/vendorsettings/hG;->Ad:Lcom/android/vendorsettings/hF;

    iget v0, v0, Lcom/android/vendorsettings/hF;->val$position:I

    iget-object v1, p0, Lcom/android/vendorsettings/hG;->Ad:Lcom/android/vendorsettings/hF;

    iget-object v1, v1, Lcom/android/vendorsettings/hF;->Ac:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    .line 343
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/hG;->Ad:Lcom/android/vendorsettings/hF;

    iget-object v1, v1, Lcom/android/vendorsettings/hF;->Ac:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 344
    iget-object v1, p0, Lcom/android/vendorsettings/hG;->Ad:Lcom/android/vendorsettings/hF;

    iget-object v1, v1, Lcom/android/vendorsettings/hF;->Ac:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 346
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 347
    iget-object v3, p0, Lcom/android/vendorsettings/hG;->Ad:Lcom/android/vendorsettings/hF;

    iget-object v3, v3, Lcom/android/vendorsettings/hF;->nN:Landroid/graphics/drawable/Drawable;

    int-to-float v1, v1

    int-to-float v2, v2

    invoke-virtual {v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 348
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 349
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 351
    :cond_0
    return-void
.end method
