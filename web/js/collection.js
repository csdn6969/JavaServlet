var titles = document.querySelectorAll('.title');
titles.forEach(function(title) {
    title.addEventListener('click', function() {
        // Tìm phần tử cha gần nhất (class 'sort-by-supplier' hoặc 'sort-by-price') của tiêu đề
        var parentContainer = this.closest('.sort-by-supplier, .sort-by-price');
        
        if (parentContainer) {
            // Tìm checkbox bên trong phần tử cha này
            var checkBox = parentContainer.querySelector('.check-box');

            if (checkBox) {
                // Toggle lớp 'hide' trên checkbox
                checkBox.classList.toggle('hide');
            }
        }
    });
});