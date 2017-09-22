.class Lcom/android/vendorsettings/aD;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Lcom/android/vendorsettings/dN;


# instance fields
.field final synthetic eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)V
    .locals 0

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private aD()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 244
    iget-object v0, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->dT:Landroid/widget/TextView;

    const v1, 0x7f0c0557

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 245
    iget-object v0, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->f(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 246
    iget-object v0, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->g(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 247
    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 241
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    iget-object v1, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 193
    iget-object v1, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eM:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eN:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v1, v2, :cond_4

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->ep:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null chosen pattern in stage \'need to confirm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->ep:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 197
    iget-object v0, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eO:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 237
    :cond_2
    :goto_0
    return-void

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eN:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 201
    :cond_4
    iget-object v1, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eI:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eK:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eP:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-eq v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v1

    sget-object v2, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eQ:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v1, v2, :cond_9

    .line 203
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_6

    .line 204
    iget-object v0, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eK:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 206
    :cond_6
    const/4 v1, 0x1

    .line 207
    iget-object v2, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v2, v2, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->b:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Landroid/security/ChooseLockSettingsHelper;->utils()Landroid/security/MiuiLockPatternUtils;

    move-result-object v2

    .line 209
    :try_start_0
    iget-object v3, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v3}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->c(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 210
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/vendorsettings/dB;->e(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Lcom/android/vendorsettings/dB;->a(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 212
    iget-object v2, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v3, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eP:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 226
    :goto_1
    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->ep:Ljava/util/List;

    .line 228
    iget-object v0, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v1, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eL:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    goto :goto_0

    .line 215
    :cond_7
    :try_start_1
    iget-object v3, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v3}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->d(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 216
    iget-object v3, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v3}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->e(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result v3

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_8

    iget-object v3, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v3}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->e(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/vendorsettings/dB;->e(Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v3}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->e(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)I

    move-result v3

    invoke-static {v2, p1, v3}, Lcom/android/vendorsettings/dB;->a(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 219
    iget-object v2, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    sget-object v3, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eQ:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    invoke-virtual {v2, v3}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    move v0, v1

    goto :goto_1

    .line 231
    :cond_9
    iget-object v0, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;->eO:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 234
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v2}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->b(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "entering the pattern."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onPatternStart()V
    .locals 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object v0, v0, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->em:Lcom/android/vendorsettings/LockPatternView;

    iget-object v1, p0, Lcom/android/vendorsettings/aD;->eu:Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {v1}, Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;->a(Lcom/android/vendorsettings/ChooseLockPattern$ChooseLockPatternFragment;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/vendorsettings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 185
    invoke-direct {p0}, Lcom/android/vendorsettings/aD;->aD()V

    .line 186
    return-void
.end method
