.class public Lcom/miui/internal/variable/AlertControllerWrapper;
.super Lcom/android/internal/app/AlertController;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/variable/AlertControllerWrapper$AlertParams;
    }
.end annotation


# instance fields
.field ju:Lcom/miui/internal/app/AlertControllerImpl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    .line 38
    new-instance v0, Lcom/miui/internal/app/AlertControllerImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/miui/internal/app/AlertControllerImpl;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    .line 39
    return-void
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getCheckedItems()[Z
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/AlertControllerImpl;->getCheckedItems()[Z

    move-result-object v0

    return-object v0
.end method

.method public getImpl()Lcom/miui/internal/app/AlertControllerImpl;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/AlertControllerImpl;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public getMessageView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/AlertControllerImpl;->getMessageView()Landroid/widget/TextView;

    move-result-object v0

    return-object v0
.end method

.method public installContent()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/AlertControllerImpl;->installContent()V

    .line 48
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0}, Lcom/miui/internal/app/AlertControllerImpl;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/AlertControllerImpl;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/AlertControllerImpl;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/miui/internal/app/AlertControllerImpl;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 78
    return-void
.end method

.method public setCheckBox(ZLjava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0, p1, p2}, Lcom/miui/internal/app/AlertControllerImpl;->setCheckBox(ZLjava/lang/CharSequence;)V

    .line 120
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setCustomTitle(Landroid/view/View;)V

    .line 58
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setIcon(I)V

    .line 88
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 83
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 0

    .prologue
    .line 92
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setMessage(Ljava/lang/CharSequence;)V

    .line 63
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/miui/internal/variable/AlertControllerWrapper;->ju:Lcom/miui/internal/app/AlertControllerImpl;

    invoke-virtual {v0, p1}, Lcom/miui/internal/app/AlertControllerImpl;->setView(Landroid/view/View;)V

    .line 72
    return-void
.end method
