.class Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;
.super Ljava/lang/Object;
.source "PrivacyPasswordChooseAccessControl.java"

# interfaces
.implements Lcom/android/settings/dN;


# instance fields
.field final synthetic anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private aD()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 173
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    iget-object v0, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anm:Landroid/widget/TextView;

    const v1, 0x7f0c0557

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 174
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->c(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->d(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 176
    return-void
.end method


# virtual methods
.method public onPatternCellAdded(Ljava/util/List;)V
    .locals 2

    .prologue
    .line 169
    const-string v0, "PrivacyPasswordChooseAccessControl"

    const-string v1, "onpatternCellAdded"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method public onPatternCleared()V
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    iget-object v0, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 165
    return-void
.end method

.method public onPatternDetected(Ljava/util/List;)V
    .locals 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->b(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anN:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->b(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anO:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-ne v0, v1, :cond_3

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    iget-object v0, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ep:Ljava/util/List;

    if-nez v0, :cond_1

    .line 144
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "null chose pattern in stage \'need to confirm"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    iget-object v0, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ep:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anP:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    .line 160
    :goto_0
    return-void

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anO:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    goto :goto_0

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->b(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anJ:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->b(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    move-result-object v0

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anL:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    if-ne v0, v1, :cond_6

    .line 151
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_5

    .line 152
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anL:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    goto :goto_0

    .line 154
    :cond_5
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->ep:Ljava/util/List;

    .line 155
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    sget-object v1, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;->anM:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    invoke-virtual {v0, v1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;)V

    goto :goto_0

    .line 158
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected stage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {v2}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->b(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$Stage;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "when "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "entering the pattern ."

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
    .line 136
    iget-object v0, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    iget-object v0, v0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->anp:Lcom/android/settings/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->anu:Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;

    invoke-static {v1}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;->a(Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 137
    invoke-direct {p0}, Lcom/android/settings/privacypassword/PrivacyPasswordChooseAccessControl$2;->aD()V

    .line 138
    return-void
.end method
