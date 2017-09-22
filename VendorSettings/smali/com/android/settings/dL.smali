.class Lcom/android/vendorsettings/dL;
.super Ljava/lang/Object;
.source "LocalePicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic oW:I

.field final synthetic oX:Lcom/android/vendorsettings/LocalePicker;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/LocalePicker;I)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/vendorsettings/dL;->oX:Lcom/android/vendorsettings/LocalePicker;

    iput p2, p0, Lcom/android/vendorsettings/dL;->oW:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/vendorsettings/dL;->oX:Lcom/android/vendorsettings/LocalePicker;

    iget v1, p0, Lcom/android/vendorsettings/dL;->oW:I

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/LocalePicker;->removeDialog(I)V

    .line 104
    iget-object v0, p0, Lcom/android/vendorsettings/dL;->oX:Lcom/android/vendorsettings/LocalePicker;

    invoke-virtual {v0}, Lcom/android/vendorsettings/LocalePicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    .line 105
    iget-object v0, p0, Lcom/android/vendorsettings/dL;->oX:Lcom/android/vendorsettings/LocalePicker;

    invoke-static {v0}, Lcom/android/vendorsettings/LocalePicker;->a(Lcom/android/vendorsettings/LocalePicker;)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/vendorsettings/LocalePicker;->updateLocale(Ljava/util/Locale;)V

    .line 106
    return-void
.end method
