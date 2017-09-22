.class Lcom/android/settings/display/D;
.super Ljava/lang/Object;
.source "PaperModeSetAppsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic Zt:Lcom/android/settings/display/C;

.field private final sCollator:Ljava/text/Collator;


# direct methods
.method constructor <init>(Lcom/android/settings/display/C;)V
    .locals 1

    .prologue
    .line 174
    iput-object p1, p0, Lcom/android/settings/display/D;->Zt:Lcom/android/settings/display/C;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/D;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/display/E;Lcom/android/settings/display/E;)I
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings/display/D;->sCollator:Ljava/text/Collator;

    invoke-virtual {p1}, Lcom/android/settings/display/E;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/settings/display/E;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 174
    check-cast p1, Lcom/android/settings/display/E;

    check-cast p2, Lcom/android/settings/display/E;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/display/D;->a(Lcom/android/settings/display/E;Lcom/android/settings/display/E;)I

    move-result v0

    return v0
.end method
