.class Lcom/android/settings/hl;
.super Ljava/lang/Object;
.source "SetFullBackupPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic zd:Lcom/android/settings/SetFullBackupPassword;


# direct methods
.method constructor <init>(Lcom/android/settings/SetFullBackupPassword;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/android/settings/hl;->zd:Lcom/android/settings/SetFullBackupPassword;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 41
    iget-object v0, p0, Lcom/android/settings/hl;->zd:Lcom/android/settings/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings/SetFullBackupPassword;->zb:Landroid/widget/Button;

    if-ne p1, v0, :cond_2

    .line 42
    iget-object v0, p0, Lcom/android/settings/hl;->zd:Lcom/android/settings/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings/SetFullBackupPassword;->yX:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    iget-object v1, p0, Lcom/android/settings/hl;->zd:Lcom/android/settings/SetFullBackupPassword;

    iget-object v1, v1, Lcom/android/settings/SetFullBackupPassword;->yY:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/android/settings/hl;->zd:Lcom/android/settings/SetFullBackupPassword;

    iget-object v2, v2, Lcom/android/settings/SetFullBackupPassword;->yZ:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 48
    const-string v0, "SetFullBackupPassword"

    const-string v1, "password mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iget-object v0, p0, Lcom/android/settings/hl;->zd:Lcom/android/settings/SetFullBackupPassword;

    const v1, 0x7f0c080a

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 76
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/android/settings/hl;->zd:Lcom/android/settings/SetFullBackupPassword;

    invoke-static {v2, v0, v1}, Lcom/android/settings/SetFullBackupPassword;->a(Lcom/android/settings/SetFullBackupPassword;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const-string v0, "SetFullBackupPassword"

    const-string v1, "password set successfully"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v0, p0, Lcom/android/settings/hl;->zd:Lcom/android/settings/SetFullBackupPassword;

    const v1, 0x7f0c0809

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 63
    iget-object v0, p0, Lcom/android/settings/hl;->zd:Lcom/android/settings/SetFullBackupPassword;

    invoke-virtual {v0}, Lcom/android/settings/SetFullBackupPassword;->finish()V

    goto :goto_0

    .line 66
    :cond_1
    const-string v0, "SetFullBackupPassword"

    const-string v1, "failure; password mismatch?"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object v0, p0, Lcom/android/settings/hl;->zd:Lcom/android/settings/SetFullBackupPassword;

    const v1, 0x7f0c080b

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v0, p0, Lcom/android/settings/hl;->zd:Lcom/android/settings/SetFullBackupPassword;

    iget-object v0, v0, Lcom/android/settings/SetFullBackupPassword;->za:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/android/settings/hl;->zd:Lcom/android/settings/SetFullBackupPassword;

    invoke-virtual {v0}, Lcom/android/settings/SetFullBackupPassword;->finish()V

    goto :goto_0

    .line 74
    :cond_3
    const-string v0, "SetFullBackupPassword"

    const-string v1, "Click on unknown view"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
