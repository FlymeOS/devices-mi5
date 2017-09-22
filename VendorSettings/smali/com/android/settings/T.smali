.class Lcom/android/settings/T;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bI:Lcom/android/settings/R;

.field final synthetic bJ:Lcom/android/settings/V;


# direct methods
.method constructor <init>(Lcom/android/settings/R;Lcom/android/settings/V;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/settings/T;->bI:Lcom/android/settings/R;

    iput-object p2, p0, Lcom/android/settings/T;->bJ:Lcom/android/settings/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/settings/T;->bI:Lcom/android/settings/R;

    invoke-static {v0, p2}, Lcom/android/settings/R;->a(Lcom/android/settings/R;I)I

    move-result v0

    .line 373
    iget-object v1, p0, Lcom/android/settings/T;->bJ:Lcom/android/settings/V;

    invoke-virtual {v1, v0}, Lcom/android/settings/V;->setFlag(I)V

    .line 374
    iget-object v1, p0, Lcom/android/settings/T;->bI:Lcom/android/settings/R;

    iget-object v1, v1, Lcom/android/settings/R;->bG:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->d(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/T;->bJ:Lcom/android/settings/V;

    invoke-virtual {v2}, Lcom/android/settings/V;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmiui/util/AutoDisableScreenButtonsHelper;->setFlag(Landroid/content/Context;Ljava/lang/String;I)V

    .line 375
    iget-object v0, p0, Lcom/android/settings/T;->bI:Lcom/android/settings/R;

    iget-object v0, v0, Lcom/android/settings/R;->bG:Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;->e(Lcom/android/settings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/settings/R;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/R;->notifyDataSetChanged()V

    .line 376
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 377
    return-void
.end method
