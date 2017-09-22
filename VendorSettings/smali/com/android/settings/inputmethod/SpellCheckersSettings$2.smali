.class Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings$2;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic agM:Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;

.field final synthetic agN:Landroid/view/textservice/SpellCheckerInfo;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings$2;->agM:Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings$2;->agN:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings$2;->agM:Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings$2;->agN:Landroid/view/textservice/SpellCheckerInfo;

    invoke-static {v0, v1}, Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;->a(Lcom/android/vendorsettings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    .line 234
    return-void
.end method
