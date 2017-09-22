.class Lcom/android/settings/hF;
.super Ljava/lang/Object;
.source "SettingsPreferenceFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic Ab:Lcom/android/settings/SettingsPreferenceFragment;

.field final synthetic Ac:Landroid/widget/ListView;

.field final synthetic nN:Landroid/graphics/drawable/Drawable;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsPreferenceFragment;Landroid/widget/ListView;ILandroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/android/settings/hF;->Ab:Lcom/android/settings/SettingsPreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/hF;->Ac:Landroid/widget/ListView;

    iput p3, p0, Lcom/android/settings/hF;->val$position:I

    iput-object p4, p0, Lcom/android/settings/hF;->nN:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings/hF;->Ac:Landroid/widget/ListView;

    iget v1, p0, Lcom/android/settings/hF;->val$position:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 339
    iget-object v0, p0, Lcom/android/settings/hF;->Ac:Landroid/widget/ListView;

    new-instance v1, Lcom/android/settings/hG;

    invoke-direct {v1, p0}, Lcom/android/settings/hG;-><init>(Lcom/android/settings/hF;)V

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ListView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 353
    return-void
.end method
