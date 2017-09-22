.class Lcom/android/vendorsettings/ba;
.super Ljava/lang/Object;
.source "CredentialStorage.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/text/TextWatcher;


# instance fields
.field final synthetic fZ:Lcom/android/vendorsettings/CredentialStorage;

.field private gb:Z

.field private final gc:Landroid/widget/Button;

.field private final gd:Landroid/widget/TextView;

.field private final ge:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lcom/android/vendorsettings/CredentialStorage;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 530
    iput-object p1, p0, Lcom/android/vendorsettings/ba;->fZ:Lcom/android/vendorsettings/CredentialStorage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 531
    const v0, 0x7f04003e

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 534
    invoke-static {p1}, Lcom/android/vendorsettings/CredentialStorage;->b(Lcom/android/vendorsettings/CredentialStorage;)I

    move-result v0

    if-ne v0, v5, :cond_0

    .line 535
    invoke-virtual {p1}, Lcom/android/vendorsettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c07ec

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    .line 544
    :goto_0
    const v0, 0x7f130083

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 545
    const v0, 0x7f130086

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/ba;->gd:Landroid/widget/TextView;

    .line 546
    iget-object v0, p0, Lcom/android/vendorsettings/ba;->gd:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/android/vendorsettings/ba;->gd:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 548
    const v0, 0x7f130084

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/vendorsettings/ba;->ge:Landroid/widget/TextView;

    .line 550
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c07eb

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 556
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 557
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 558
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vendorsettings/ba;->gc:Landroid/widget/Button;

    .line 559
    iget-object v0, p0, Lcom/android/vendorsettings/ba;->gc:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 560
    return-void

    .line 536
    :cond_0
    invoke-static {p1}, Lcom/android/vendorsettings/CredentialStorage;->b(Lcom/android/vendorsettings/CredentialStorage;)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 537
    invoke-virtual {p1}, Lcom/android/vendorsettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c07f0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 538
    :cond_1
    invoke-static {p1}, Lcom/android/vendorsettings/CredentialStorage;->b(Lcom/android/vendorsettings/CredentialStorage;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 539
    invoke-virtual {p1}, Lcom/android/vendorsettings/CredentialStorage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c07f1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 541
    :cond_2
    const v0, 0x7f0c07f2

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/vendorsettings/CredentialStorage;->b(Lcom/android/vendorsettings/CredentialStorage;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v4

    invoke-virtual {p1, v0, v1}, Lcom/android/vendorsettings/CredentialStorage;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0
.end method

.method synthetic constructor <init>(Lcom/android/vendorsettings/CredentialStorage;Lcom/android/vendorsettings/aW;)V
    .locals 0

    .prologue
    .line 521
    invoke-direct {p0, p1}, Lcom/android/vendorsettings/ba;-><init>(Lcom/android/vendorsettings/CredentialStorage;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 563
    iget-object v1, p0, Lcom/android/vendorsettings/ba;->gc:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/vendorsettings/ba;->gd:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vendorsettings/ba;->gd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 564
    return-void

    .line 563
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 567
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 573
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/vendorsettings/ba;->gb:Z

    .line 574
    return-void

    .line 573
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 577
    iget-boolean v0, p0, Lcom/android/vendorsettings/ba;->gb:Z

    if-eqz v0, :cond_3

    .line 578
    iput-boolean v2, p0, Lcom/android/vendorsettings/ba;->gb:Z

    .line 579
    iget-object v0, p0, Lcom/android/vendorsettings/ba;->ge:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 580
    iget-object v0, p0, Lcom/android/vendorsettings/ba;->fZ:Lcom/android/vendorsettings/CredentialStorage;

    invoke-static {v0}, Lcom/android/vendorsettings/CredentialStorage;->a(Lcom/android/vendorsettings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/vendorsettings/ba;->gd:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/security/KeyStore;->unlock(Ljava/lang/String;)Z

    .line 581
    iget-object v0, p0, Lcom/android/vendorsettings/ba;->fZ:Lcom/android/vendorsettings/CredentialStorage;

    invoke-static {v0}, Lcom/android/vendorsettings/CredentialStorage;->a(Lcom/android/vendorsettings/CredentialStorage;)Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->getLastError()I

    move-result v0

    .line 582
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 583
    iget-object v0, p0, Lcom/android/vendorsettings/ba;->fZ:Lcom/android/vendorsettings/CredentialStorage;

    invoke-static {v0, v3}, Lcom/android/vendorsettings/CredentialStorage;->a(Lcom/android/vendorsettings/CredentialStorage;I)I

    .line 584
    iget-object v0, p0, Lcom/android/vendorsettings/ba;->fZ:Lcom/android/vendorsettings/CredentialStorage;

    const v1, 0x7f0c07f5

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 589
    iget-object v0, p0, Lcom/android/vendorsettings/ba;->fZ:Lcom/android/vendorsettings/CredentialStorage;

    invoke-static {v0}, Lcom/android/vendorsettings/CredentialStorage;->c(Lcom/android/vendorsettings/CredentialStorage;)V

    .line 605
    :cond_0
    :goto_0
    return-void

    .line 590
    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 591
    iget-object v0, p0, Lcom/android/vendorsettings/ba;->fZ:Lcom/android/vendorsettings/CredentialStorage;

    invoke-static {v0, v3}, Lcom/android/vendorsettings/CredentialStorage;->a(Lcom/android/vendorsettings/CredentialStorage;I)I

    .line 592
    iget-object v0, p0, Lcom/android/vendorsettings/ba;->fZ:Lcom/android/vendorsettings/CredentialStorage;

    const v1, 0x7f0c07f3

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 596
    iget-object v0, p0, Lcom/android/vendorsettings/ba;->fZ:Lcom/android/vendorsettings/CredentialStorage;

    invoke-static {v0}, Lcom/android/vendorsettings/CredentialStorage;->d(Lcom/android/vendorsettings/CredentialStorage;)V

    goto :goto_0

    .line 597
    :cond_2
    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 599
    iget-object v1, p0, Lcom/android/vendorsettings/ba;->fZ:Lcom/android/vendorsettings/CredentialStorage;

    add-int/lit8 v0, v0, -0xa

    add-int/lit8 v0, v0, 0x1

    invoke-static {v1, v0}, Lcom/android/vendorsettings/CredentialStorage;->a(Lcom/android/vendorsettings/CredentialStorage;I)I

    .line 600
    iget-object v0, p0, Lcom/android/vendorsettings/ba;->fZ:Lcom/android/vendorsettings/CredentialStorage;

    invoke-static {v0}, Lcom/android/vendorsettings/CredentialStorage;->d(Lcom/android/vendorsettings/CredentialStorage;)V

    goto :goto_0

    .line 604
    :cond_3
    iget-object v0, p0, Lcom/android/vendorsettings/ba;->fZ:Lcom/android/vendorsettings/CredentialStorage;

    invoke-virtual {v0}, Lcom/android/vendorsettings/CredentialStorage;->finish()V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 570
    return-void
.end method
