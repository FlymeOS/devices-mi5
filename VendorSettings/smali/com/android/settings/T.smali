.class Lcom/android/vendorsettings/T;
.super Ljava/lang/Object;
.source "AutoDisableScreenButtonsAppListSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic bI:Lcom/android/vendorsettings/R;

.field final synthetic bJ:Lcom/android/vendorsettings/V;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/R;Lcom/android/vendorsettings/V;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/vendorsettings/T;->bI:Lcom/android/vendorsettings/R;

    iput-object p2, p0, Lcom/android/vendorsettings/T;->bJ:Lcom/android/vendorsettings/V;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/vendorsettings/T;->bI:Lcom/android/vendorsettings/R;

    invoke-static {v0, p2}, Lcom/android/vendorsettings/R;->a(Lcom/android/vendorsettings/R;I)I

    move-result v0

    .line 373
    iget-object v1, p0, Lcom/android/vendorsettings/T;->bJ:Lcom/android/vendorsettings/V;

    invoke-virtual {v1, v0}, Lcom/android/vendorsettings/V;->setFlag(I)V

    .line 374
    iget-object v1, p0, Lcom/android/vendorsettings/T;->bI:Lcom/android/vendorsettings/R;

    iget-object v1, v1, Lcom/android/vendorsettings/R;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->d(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/T;->bJ:Lcom/android/vendorsettings/V;

    invoke-virtual {v2}, Lcom/android/vendorsettings/V;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lmiui/util/AutoDisableScreenButtonsHelper;->setFlag(Landroid/content/Context;Ljava/lang/String;I)V

    .line 375
    iget-object v0, p0, Lcom/android/vendorsettings/T;->bI:Lcom/android/vendorsettings/R;

    iget-object v0, v0, Lcom/android/vendorsettings/R;->bG:Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;->e(Lcom/android/vendorsettings/AutoDisableScreenButtonsAppListSettings;)Lcom/android/vendorsettings/R;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vendorsettings/R;->notifyDataSetChanged()V

    .line 376
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 377
    return-void
.end method
