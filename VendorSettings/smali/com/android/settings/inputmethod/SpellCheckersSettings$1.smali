.class Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings$1;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic agL:Landroid/view/textservice/SpellCheckerInfo;

.field final synthetic agM:Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings$1;->agM:Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings$1;->agL:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 201
    if-nez p2, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings$1;->agM:Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;->a(Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;)Landroid/view/textservice/TextServicesManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    .line 213
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 214
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings$1;->agM:Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;

    invoke-static {v0}, Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;->b(Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;)V

    .line 215
    return-void

    .line 204
    :cond_0
    # invokes: Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;->cq(I)I
    invoke-static {p2}, Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;->access$100(I)I

    move-result v0

    .line 205
    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings$1;->agM:Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;

    invoke-static {v1}, Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;->a(Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;)Landroid/view/textservice/TextServicesManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings$1;->agL:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v2, v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/textservice/TextServicesManager;->setSpellCheckerSubtype(Landroid/view/textservice/SpellCheckerSubtype;)V

    goto :goto_0
.end method
