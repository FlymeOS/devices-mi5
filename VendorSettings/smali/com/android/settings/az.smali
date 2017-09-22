.class Lcom/android/vendorsettings/az;
.super Ljava/lang/Object;
.source "ChooseLockPassword.java"

# interfaces
.implements Lmiui/view/MiuiKeyBoardView$OnKeyboardActionListener;


# instance fields
.field final synthetic eg:Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/android/vendorsettings/az;->eg:Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyBoardDelete()V
    .locals 3

    .prologue
    .line 300
    iget-object v0, p0, Lcom/android/vendorsettings/az;->eg:Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment;->a(Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    .line 301
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 302
    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 304
    :cond_0
    return-void
.end method

.method public onKeyBoardOK()V
    .locals 1

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/vendorsettings/az;->eg:Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-virtual {v0}, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment;->aA()V

    .line 309
    return-void
.end method

.method public onText(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/vendorsettings/az;->eg:Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment;

    invoke-static {v0}, Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment;->a(Lcom/android/vendorsettings/ChooseLockPassword$ChooseLockPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 296
    return-void
.end method
