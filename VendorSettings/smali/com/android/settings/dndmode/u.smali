.class Lcom/android/vendorsettings/dndmode/u;
.super Ljava/lang/Object;
.source "RepeatPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field final synthetic aaW:Lcom/android/vendorsettings/dndmode/RepeatPreference;


# direct methods
.method constructor <init>(Lcom/android/vendorsettings/dndmode/RepeatPreference;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/android/vendorsettings/dndmode/u;->aaW:Lcom/android/vendorsettings/dndmode/RepeatPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;IZ)V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/vendorsettings/dndmode/u;->aaW:Lcom/android/vendorsettings/dndmode/RepeatPreference;

    invoke-static {v0}, Lcom/android/vendorsettings/dndmode/RepeatPreference;->a(Lcom/android/vendorsettings/dndmode/RepeatPreference;)Lcom/android/vendorsettings/dndmode/b;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/android/vendorsettings/dndmode/b;->set(IZ)V

    .line 141
    return-void
.end method
