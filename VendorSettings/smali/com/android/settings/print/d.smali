.class Lcom/android/settings/print/d;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic amr:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .prologue
    .line 204
    iput-object p1, p0, Lcom/android/settings/print/d;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 207
    if-eqz p2, :cond_1

    .line 208
    iget-object v0, p0, Lcom/android/settings/print/d;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->e(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/settings/print/d;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v0, v2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->b(Lcom/android/settings/print/PrintServiceSettingsFragment;I)V

    .line 218
    :goto_0
    iget-object v0, p0, Lcom/android/settings/print/d;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->b(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    .line 219
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/d;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    iget-object v1, p0, Lcom/android/settings/print/d;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->f(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->a(Lcom/android/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/settings/print/d;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->g(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings/widget/SwitchBar;->bw(Z)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/print/d;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "EXTRA_CHECKED"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 216
    iget-object v0, p0, Lcom/android/settings/print/d;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    iget-object v1, p0, Lcom/android/settings/print/d;->amr:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->f(Lcom/android/settings/print/PrintServiceSettingsFragment;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/settings/print/PrintServiceSettingsFragment;->a(Lcom/android/settings/print/PrintServiceSettingsFragment;Ljava/lang/String;Z)V

    goto :goto_0
.end method
